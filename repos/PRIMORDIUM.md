# PRIMORDIUM
## A Haven for Primes — Ubuntu Workspace Repo
**Prime:** 2 — Seed
**Status:** Seed document — repo not yet created
**Owner:** eaprime1 (or spectorium)
**Replaces:** primehaven (local folder) on Ubuntu laptop

---

> *"Primordium: the first substance. The original matter from which everything else differentiates."*

---

## What Is PRIMORDIUM?

**PRIMORDIUM** is the Ubuntu laptop workspace repository — the ground layer for all development on the physical device. It is "a haven for primes" because:

1. Everything in the ecosystem is prime-indexed
2. The Ubuntu laptop is where primes are *worked* — the physical prime-workspace
3. Primordium precedes everything — it is the first substance before differentiation

PRIMORDIUM holds the **device configuration, workspace setup, template repos, and Unix instance management** for the Ubuntu laptop. It is what primehaven was meant to be, properly named.

**Not to be confused with:**
- AXIOM (the working identity/mode on the laptop)
- INCUBATOR (the terminal-only mode concept)
- MANDELBROT (the content source well)

PRIMORDIUM is the **substrate** — the ground from which AXIOM and INCUBATOR operate.

---

## Role in the Ecosystem

```
PRIMORDIUM (the haven)
    │
    ├── AXIOM (GUI mode identity)
    │       └── six aspect terminals
    │
    ├── INCUBATOR (terminal-only mode identity)
    │       └── no GUI overhead
    │
    └── tools/, templates/, config/
            └── workspace scaffolding
```

PRIMORDIUM is **first in, last out** — it initializes when the machine boots and is the last thing retired. It is the foundation.

---

## Architecture (Planned)

```
PRIMORDIUM/
│
├── .navido/missions/
│   ├── PRIMORDIUM.navido       ← Identity: "I am the first substance"
│   ├── AXIOM.navido            ← GUI mode orientation
│   └── INCUBATOR.navido        ← Terminal-only orientation
│
├── config/                     ← Device configuration files
│   ├── axiom.bashrc            ← AXIOM environment block
│   ├── tmux.conf               ← Six-aspect tmux layout
│   └── .gitconfig              ← Git config for the machine
│
├── templates/                  ← Repo templates (three types)
│   ├── terminal-concept/       ← CLI-first repos
│   ├── general/                ← Standard UNEXUSI-format
│   └── visionary/              ← Forward-facing, Eric's layer
│
├── tools/                      ← Workspace tools and scripts
│   ├── control_center.sh       ← Mirror of UNEXUSI dashboard
│   ├── aspect_launcher.sh      ← Launch six-aspect tmux session
│   └── born_yesterday.sh       ← Born Yesterday protocol script
│
├── workspace/                  ← Active development workspace
└── logs/                       ← axiom.log and session records
```

---

## Prime Identity

**Prime 2 — Seed:** PRIMORDIUM is the origin. Everything else seeds from it. The laptop is where the work is real. The prime-haven is where primes are kept before they become something.

**Prime frequency:** 2 resonates with AXIOM (also prime 2 in the device table). This is correct — PRIMORDIUM and AXIOM are tightly coupled. PRIMORDIUM is the soil; AXIOM is the first growth from it.

---

## Connection to primehaven

The old `primehaven` repo and local folder are now:
- **Remote:** `spectorium/mandelbrot` (renamed on GitHub)
- **Local (sandbox):** `/home/user/mandelbrot` (renamed)
- **Local (real device):** still `/home/axiom/primehaven` — needs `mv`

PRIMORDIUM is **not** a rename of primehaven. It is a **new repo** with a cleaner purpose. primehaven's content goes to MANDELBROT (it already did). PRIMORDIUM holds the workspace layer that primehaven never properly was.

**On the real device, when ready:**
```bash
# Rename the old folder
mv ~/primehaven ~/mandelbrot
cd ~/mandelbrot
git remote set-url origin https://github.com/spectorium/mandelbrot.git

# Clone the new PRIMORDIUM repo
git clone https://github.com/eaprime1/PRIMORDIUM.git ~/PRIMORDIUM
```

---

## Creation Checklist

- [ ] Create `eaprime1/PRIMORDIUM` repo on GitHub
- [ ] Initialize with this README
- [ ] Add `.navido/missions/PRIMORDIUM.navido` (first-person: "I am the first substance")
- [ ] Copy `axiom.bashrc` environment block from `UNEXUSI/devices/AXIOM.md`
- [ ] Add three template repo structures
- [ ] Add to UNEXUSI CONTROL_CENTER.md registry
- [ ] Clone to `/home/axiom/PRIMORDIUM` on real device

---

*PRIMORDIUM Seed Document | UNEXUSI Repo Registry | 2026-04-30*
*Chain of Custody Active — Seed state*
