"""
sync_hodie.py — Download files from the Google Drive 'hodie' folder into hodie/

Authentication (pick one):
  Local/server: --credentials /path/to/service-account-key.json
  GitHub Actions: set env var GDRIVE_SERVICE_ACCOUNT_KEY to the JSON key contents

Usage:
  python scripts/sync_hodie.py
  python scripts/sync_hodie.py --credentials .secrets/gdrive-key.json
  python scripts/sync_hodie.py --dry-run
  python scripts/sync_hodie.py --folder-id <other-folder-id>
"""

import argparse
import json
import os
import sys
from pathlib import Path

# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------

HODIE_FOLDER_ID = "1tXvubhxXVYld_PgywN1S9XX_Ng6QgqLo"
HODIE_LOCAL_DIR = Path(__file__).parent.parent / "hodie"
MANIFEST_PATH = HODIE_LOCAL_DIR / ".sync-manifest.json"
SCOPES = ["https://www.googleapis.com/auth/drive.readonly"]

# Google Docs native MIME types → export MIME type + file extension
EXPORT_MAP = {
    "application/vnd.google-apps.document": ("text/plain", ".txt"),
    "application/vnd.google-apps.spreadsheet": ("text/csv", ".csv"),
    "application/vnd.google-apps.presentation": ("application/pdf", ".pdf"),
    "application/vnd.google-apps.drawing": ("image/png", ".png"),
}

# ---------------------------------------------------------------------------
# Auth
# ---------------------------------------------------------------------------

def _build_credentials(credentials_path):
    """Build service account credentials from a file path or environment variable."""
    try:
        from google.oauth2 import service_account
    except ImportError:
        print("ERROR: google-auth is not installed. Run: pip install -r requirements.txt")
        sys.exit(1)

    env_key = os.environ.get("GDRIVE_SERVICE_ACCOUNT_KEY")
    if env_key:
        info = json.loads(env_key)
    elif credentials_path:
        with open(credentials_path) as f:
            info = json.load(f)
    else:
        print(
            "ERROR: No credentials provided.\n"
            "  Use --credentials /path/to/key.json  OR\n"
            "  set the GDRIVE_SERVICE_ACCOUNT_KEY environment variable."
        )
        sys.exit(1)

    return service_account.Credentials.from_service_account_info(info, scopes=SCOPES)


def _build_service(credentials_path):
    from googleapiclient.discovery import build

    creds = _build_credentials(credentials_path)
    return build("drive", "v3", credentials=creds, cache_discovery=False)


# ---------------------------------------------------------------------------
# Drive helpers
# ---------------------------------------------------------------------------

def list_folder(service, folder_id):
    """Return all files (not folders) directly inside folder_id."""
    results = []
    page_token = None
    query = f"'{folder_id}' in parents and mimeType != 'application/vnd.google-apps.folder' and trashed = false"

    while True:
        resp = (
            service.files()
            .list(
                q=query,
                fields="nextPageToken, files(id, name, mimeType, modifiedTime, size)",
                pageToken=page_token,
                pageSize=100,
            )
            .execute()
        )
        results.extend(resp.get("files", []))
        page_token = resp.get("nextPageToken")
        if not page_token:
            break

    return results


def download_file(service, file_meta, dest_dir, dry_run=False):
    """
    Download or export a single Drive file.
    Returns ('downloaded'|'skipped'|'error', local_path_or_message).
    """
    from googleapiclient.errors import HttpError
    from googleapiclient.http import MediaIoBaseDownload
    import io

    file_id = file_meta["id"]
    name = file_meta["name"]
    mime = file_meta["mimeType"]

    if mime in EXPORT_MAP:
        export_mime, ext = EXPORT_MAP[mime]
        # Append extension if not already present
        if not name.endswith(ext):
            local_name = name + ext
        else:
            local_name = name
    else:
        local_name = name
        export_mime = None

    dest = dest_dir / local_name

    if dry_run:
        return "dry-run", dest

    try:
        if export_mime:
            request = service.files().export_media(fileId=file_id, mimeType=export_mime)
        else:
            request = service.files().get_media(fileId=file_id)

        buf = io.BytesIO()
        downloader = MediaIoBaseDownload(buf, request)
        done = False
        while not done:
            _, done = downloader.next_chunk()

        dest.write_bytes(buf.getvalue())
        return "downloaded", dest

    except HttpError as e:
        return "error", str(e)


# ---------------------------------------------------------------------------
# Manifest
# ---------------------------------------------------------------------------

def load_manifest():
    if MANIFEST_PATH.exists():
        return json.loads(MANIFEST_PATH.read_text())
    return {}

def save_manifest(manifest):
    MANIFEST_PATH.write_text(json.dumps(manifest, indent=2))


# ---------------------------------------------------------------------------
# Main sync logic
# ---------------------------------------------------------------------------

def sync(folder_id, credentials_path, dry_run):
    print(f"Connecting to Google Drive (folder: {folder_id}) ...")
    service = _build_service(credentials_path)

    print("Listing files ...")
    files = list_folder(service, folder_id)
    print(f"Found {len(files)} file(s) in Drive folder.")

    HODIE_LOCAL_DIR.mkdir(parents=True, exist_ok=True)
    manifest = load_manifest()

    counts = {"downloaded": 0, "skipped": 0, "error": 0, "dry-run": 0}

    for f in files:
        fid = f["id"]
        modified = f.get("modifiedTime", "")
        name = f.get("name", fid)

        cached = manifest.get(fid, {})
        if cached.get("modifiedTime") == modified and not dry_run:
            print(f"  skip  {name}  (up to date)")
            counts["skipped"] += 1
            continue

        status, result = download_file(service, f, HODIE_LOCAL_DIR, dry_run=dry_run)
        counts[status] += 1

        if status == "downloaded":
            print(f"  ok    {name}  → {result.name}")
            manifest[fid] = {"name": name, "modifiedTime": modified}
        elif status == "dry-run":
            print(f"  would download  {name}  → {result.name}")
        else:
            print(f"  ERROR {name}: {result}")

    if not dry_run:
        save_manifest(manifest)
      
    print()
    if dry_run:
        print(f"Dry run complete: {counts['dry-run']} would be downloaded, {counts['skipped']} up to date.")
    else:
        print(
            f"Sync complete: {counts['downloaded']} downloaded, "
            f"{counts['skipped']} skipped, {counts['error']} error(s)."
        )

    return counts["error"]


# ---------------------------------------------------------------------------
# Entry point
# ---------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(description="Sync Google Drive hodie folder to local repo.")
    parser.add_argument(
        "--credentials",
        metavar="PATH",
        help="Path to service account JSON key file (optional if GDRIVE_SERVICE_ACCOUNT_KEY is set)",
    )
    parser.add_argument(
        "--folder-id",
        default=HODIE_FOLDER_ID,
        help=f"Google Drive folder ID to sync (default: {HODIE_FOLDER_ID})",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="List files that would be downloaded without actually downloading them",
    )
    args = parser.parse_args()

    error_count = sync(args.folder_id, args.credentials, args.dry_run)
    sys.exit(1 if error_count > 0 else 0)


if __name__ == "__main__":
    main()
