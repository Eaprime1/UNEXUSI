#!/usr/bin/env bash
# ============================================================
# UNEXUSI CONTROL CENTER — v0.1
# Unique Nexus Interface (seeding toward full UNEXUSI UI)
# Prime Progression: 2 → 3 → 5 → 7 → 11 → 13 → 17
# ============================================================

# --- Colors & style ---
RESET="\033[0m"
BOLD="\033[1m"
DIM="\033[2m"

BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"

BG_BLACK="\033[40m"
BG_BLUE="\033[44m"
BG_MAGENTA="\033[45m"
BG_CYAN="\033[46m"

# --- Config ---
UNEXUSI_PATH="${UNEXUSI_PATH:-$(cd "$(dirname "$0")/.." && pwd)}"
MANDELBROT_PATH="${MANDELBROT_PATH:-$HOME/MANDELBROT}"
LOG_FILE="$HOME/logs/axiom.log"
VERSION="0.1"
BUILD_DATE="2026-04-08"

# --- Prime Progression states ---
PRIMES=(2 3 5 7 11 13 17)
PRIME_NAMES=("Seed" "Gateway" "Build" "Ship" "Nexus" "Vet" "Archive")

# ============================================================
clear

# --- Header ---
echo -e "${BOLD}${CYAN}"
echo "  ██╗   ██╗███╗   ██╗███████╗██╗  ██╗██╗   ██╗███████╗██╗"
echo "  ██║   ██║████╗  ██║██╔════╝╚██╗██╔╝██║   ██║██╔════╝██║"
echo "  ██║   ██║██╔██╗ ██║█████╗   ╚███╔╝ ██║   ██║███████╗██║"
echo "  ██║   ██║██║╚██╗██║██╔══╝   ██╔██╗ ██║   ██║╚════██║██║"
echo "  ╚██████╔╝██║ ╚████║███████╗██╔╝ ██╗╚██████╔╝███████║██║"
echo "   ╚═════╝ ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝"
echo -e "${RESET}"
echo -e "${DIM}${CYAN}  CONTROL CENTER  ${WHITE}v${VERSION}  ${DIM}│  Prime Progression: 2→3→5→7→11→13→17  │  ${BUILD_DATE}${RESET}"
echo -e "${DIM}  ─────────────────────────────────────────────────────────────${RESET}"
echo ""

# --- Device Status ---
echo -e "${BOLD}${YELLOW}  ◈ DEVICE${RESET}"
CURRENT_USER=$(whoami)
HOSTNAME_VAL=$(hostname 2>/dev/null || echo "axiom")
UPTIME_VAL=$(uptime -p 2>/dev/null || echo "unknown")
echo -e "  ${DIM}User:${RESET}    ${GREEN}${CURRENT_USER}${RESET}"
echo -e "  ${DIM}Host:${RESET}    ${WHITE}${HOSTNAME_VAL}${RESET}"
echo -e "  ${DIM}Uptime:${RESET}  ${DIM}${UPTIME_VAL}${RESET}"
echo ""

# --- Prime Progression Bar ---
echo -e "${BOLD}${YELLOW}  ◈ PRIME PROGRESSION${RESET}"
printf "  "
for i in "${!PRIMES[@]}"; do
    p="${PRIMES[$i]}"
    n="${PRIME_NAMES[$i]}"
    printf "${MAGENTA}[${BOLD}%2s${RESET}${MAGENTA} %-7s]${RESET} " "$p" "$n"
    if [ $(( (i+1) % 4 )) -eq 0 ]; then printf "\n  "; fi
done
echo ""
echo ""

# --- Repo Status ---
echo -e "${BOLD}${YELLOW}  ◈ REPOS${RESET}"

repo_status() {
    local name="$1"
    local path="$2"
    if [ -d "$path/.git" ]; then
        cd "$path" 2>/dev/null
        local branch=$(git branch --show-current 2>/dev/null || echo "?")
        local changes=$(git status --short 2>/dev/null | wc -l | tr -d ' ')
        local last=$(git log --oneline -1 2>/dev/null | cut -c1-50 || echo "no commits")
        if [ "$changes" -gt 0 ]; then
            local chg_str="${YELLOW}${changes} changes${RESET}"
        else
            local chg_str="${GREEN}clean${RESET}"
        fi
        echo -e "  ${BOLD}${CYAN}${name}${RESET}  ${DIM}[${branch}]${RESET}  ${chg_str}"
        echo -e "    ${DIM}↳ ${last}${RESET}"
    else
        echo -e "  ${DIM}${name}${RESET}  ${RED}not found at ${path}${RESET}"
    fi
    cd "$UNEXUSI_PATH" 2>/dev/null
}

repo_status "UNEXUSI    " "$UNEXUSI_PATH"
repo_status "MANDELBROT " "$MANDELBROT_PATH"
echo ""

# --- Characters ---
echo -e "${BOLD}${YELLOW}  ◈ CHARACTERS${RESET}"
echo -e "  ${MAGENTA}C-01 Valthram${RESET}   ${DIM}Entity · depth/structure    · prime 17${RESET}"
echo -e "  ${MAGENTA}C-02 Rema${RESET}       ${DIM}Entity · flow/interface     · prime  3${RESET}"
echo -e "  ${CYAN}C-03 Nexus${RESET}      ${DIM}Aspect · coordination       · prime 11${RESET}  ${DIM}t1${RESET}"
echo -e "  ${CYAN}C-04 Gateway${RESET}    ${DIM}Aspect · entity interface   · prime  3${RESET}  ${DIM}t2${RESET}"
echo -e "  ${CYAN}C-05 Archive${RESET}    ${DIM}Aspect · knowledge/codex    · prime 17${RESET}  ${DIM}t3${RESET}"
echo -e "  ${CYAN}C-06 Workstream${RESET} ${DIM}Aspect · active dev         · prime  5${RESET}  ${DIM}t4${RESET}"
echo -e "  ${CYAN}C-07 Quality${RESET}    ${DIM}Aspect · vetting/review     · prime 13${RESET}  ${DIM}t5${RESET}"
echo -e "  ${CYAN}C-08 Distrib.${RESET}   ${DIM}Aspect · github/sync        · prime  7${RESET}  ${DIM}t6${RESET}"
echo ""

# --- Navido Missions ---
echo -e "${BOLD}${YELLOW}  ◈ NAVIDO MISSIONS${RESET}"
NAVIDO_DIR="$UNEXUSI_PATH/.navido/missions"
if [ -d "$NAVIDO_DIR" ]; then
    for f in "$NAVIDO_DIR"/*.navido; do
        [ -e "$f" ] || continue
        name=$(basename "$f" .navido)
        status=$(grep "^Status:" "$f" 2>/dev/null | head -1 | sed 's/Status: //' || echo "active")
        echo -e "  ${GREEN}▸${RESET} ${BOLD}${name}${RESET}  ${DIM}${status}${RESET}"
    done
else
    echo -e "  ${DIM}No missions loaded — .navido not found${RESET}"
fi
echo ""

# --- Recent Log ---
echo -e "${BOLD}${YELLOW}  ◈ RECENT ACTIVITY${RESET}"
if [ -f "$LOG_FILE" ]; then
    tail -5 "$LOG_FILE" | while IFS= read -r line; do
        echo -e "  ${DIM}${line}${RESET}"
    done
else
    echo -e "  ${DIM}No activity log yet — axiom_log \"message\" to start${RESET}"
fi
echo ""

# --- Quick Commands ---
echo -e "${DIM}  ─────────────────────────────────────────────────────────────${RESET}"
echo -e "${BOLD}${YELLOW}  ◈ QUICK COMMANDS${RESET}"
echo -e "  ${CYAN}t1${RESET}–${CYAN}t6${RESET}         Launch terminal aspects"
echo -e "  ${CYAN}ux${RESET}             cd UNEXUSI"
echo -e "  ${CYAN}mb${RESET}             cd MANDELBROT"
echo -e "  ${CYAN}axiom_log${RESET}      Log an activity entry"
echo -e "  ${CYAN}cc${RESET}             Relaunch this dashboard"
echo -e "  ${CYAN}perplexity${RESET}     Research CLI (Archive terminal)"
echo ""
echo -e "${DIM}  Seeding toward UNEXUSI — Unique Nexus Interface             v${VERSION}${RESET}"
echo -e "${DIM}  ─────────────────────────────────────────────────────────────${RESET}"
echo ""
