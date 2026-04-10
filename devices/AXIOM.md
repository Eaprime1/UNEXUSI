# AXIOM — Primary Working Platform
## Device Registry Entry D-01

**Classification:** Primary Development Podium
**Device Type:** Ubuntu Laptop
**Primary User:** `axiom`
**Previous User:** `sauron`
**Status:** Setting Up
**Chain of Custody:** Active from PRIMAL launch

---

> *"The GUI is the weight. The terminal is the wing."*

---

## What Is AXIOM?

AXIOM is not just a user account. It is the **identity of the device** — the laptop *becomes* AXIOM when the `axiom` user is active and the environment is configured. It is the primary working podium for all fractal development, PRIMAL launch work, and UNEXUSI control operations.

AXIOM operates on a core principle:

**Many terminals, no weight.**

The desktop GUI stays minimal or absent. In Unix terminals with no GUI load, all instances can operate simultaneously — each terminal a dedicated aspect, each running its own process, all coordinated through UNEXUSI. This is how a resource-constrained machine becomes a multi-instance development environment.

---

## System Identity

| Field | Value |
|-------|-------|
| Device name | axiom |
| OS | Ubuntu Linux |
| Primary user | `axiom` |
| Shell | bash (default) or zsh |
| Working repos | UNEXUSI, MANDELBROT |
| Terminal model | Multi-instance, no GUI load |
| Role | PRIMAL dev platform + UNEXUSI control node |

---

## Setup: Creating the AXIOM User

Run the following from the current `sauron` (or root) session:

```bash
# 1. Create the axiom user with home directory
sudo adduser axiom

# 2. Add axiom to the sudo group
sudo usermod -aG sudo axiom

# 3. Verify the user exists
id axiom

# 4. Switch to axiom to test
su - axiom

# 5. Confirm you are now axiom
whoami
```

**Note on the sauron profile:** The `sauron` user and its configuration stay intact. The MANDELBROT repo (primehaven) content lives under that profile and converts to chain-of-custody as work progresses. There is no need to delete or rename sauron — AXIOM is an addition, not a replacement, until ready to cut over.

---

## Environment Configuration (run as axiom)

```bash
# Clone the control repos into axiom's home
cd ~
git clone https://github.com/Eaprime1/UNEXUSI.git
git clone https://github.com/devicehaven/primehaven.git MANDELBROT

# Set git identity for axiom
git config --global user.name "axiom"
git config --global user.email "your@email.com"

# Create the working directory structure
mkdir -p ~/workspace ~/logs ~/tools

# Create the axiom shell profile additions
cat >> ~/.bashrc << 'EOF'

# === AXIOM ENVIRONMENT ===
export AXIOM_HOME="$HOME"
export UNEXUSI_PATH="$HOME/UNEXUSI"
export MANDELBROT_PATH="$HOME/MANDELBROT"

# Quick navigation
alias ux="cd $UNEXUSI_PATH"
alias mb="cd $MANDELBROT_PATH"
alias ws="cd $HOME/workspace"

# Terminal aspect launchers (from MANDELBROT)
alias t1="bash $MANDELBROT_PATH/terminals/aspect_01_nexus.sh"
alias t2="bash $MANDELBROT_PATH/terminals/aspect_02_gateway.sh"
alias t3="bash $MANDELBROT_PATH/terminals/aspect_03_archive.sh"
alias t4="bash $MANDELBROT_PATH/terminals/aspect_04_workstream.sh"
alias t5="bash $MANDELBROT_PATH/terminals/aspect_05_quality.sh"
alias t6="bash $MANDELBROT_PATH/terminals/aspect_06_distribution.sh"

# AXIOM log entry
axiom_log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> $HOME/logs/axiom.log
    echo "[AXIOM] $1"
}
export -f axiom_log

echo "AXIOM environment loaded."
# === END AXIOM ENVIRONMENT ===
EOF

# Apply immediately
source ~/.bashrc
```

---

## The Terminal Model

AXIOM runs multiple terminal instances — one per function. No GUI required. This is the **Six Aspect Pattern** extended to the laptop:

```
TERMINAL 1 — Nexus (t1)        : Coordination, session overview
TERMINAL 2 — Gateway (t2)      : UNEXUSI control center ops
TERMINAL 3 — Archive (t3)      : Docs, research, Perplexity CLI
TERMINAL 4 — Workstream (t4)   : Active development, editing
TERMINAL 5 — Quality (t5)      : Git review, testing, vetting
TERMINAL 6 — Distribution (t6) : Push, publish, sync
```

**Opening all aspects at once (tmux method):**

```bash
# Install tmux if not present
sudo apt install tmux

# Launch the AXIOM session
tmux new-session -d -s axiom -n nexus
tmux new-window -t axiom -n gateway
tmux new-window -t axiom -n archive
tmux new-window -t axiom -n workstream
tmux new-window -t axiom -n quality
tmux new-window -t axiom -n distribution
tmux attach -t axiom
```

**Navigate between terminals:** `Ctrl+b` then window number (0-5)
**Detach and leave running:** `Ctrl+b d`
**Return to session:** `tmux attach -t axiom`

This keeps the GUI overhead near zero — all work happens in the tmux session, all six aspects live simultaneously, the machine stays light.

---

## Perplexity CLI on AXIOM

```bash
# Install Perplexity CLI (confirm your install method)
# pip install perplexity-cli   (if Python-based)
# or follow the CLI's documented install

# Test from AXIOM
perplexity "What is the Mandelbrot set boundary complexity"

# Pipe research output into UNEXUSI docs
perplexity "maple samara autorotation flight mechanics" >> $UNEXUSI_PATH/docs/research/samara_research.md
```

The Archive terminal (t3) is the natural home for Perplexity queries. Research flows in, gets filed into UNEXUSI docs, feeds the Mandelkeep.

---

## AXIOM Logging

Every significant AXIOM action should be logged:

```bash
# Manual log entry
axiom_log "UNEXUSI control center CONTROL_CENTER.md created"

# Automatic from scripts
bash $UNEXUSI_PATH/scripts/command-log.sh "Axiom environment initialized"

# Check the log
cat ~/logs/axiom.log
```

The log is the chain of custody at the device level. What happened, when, from this machine.

---

## First Session Checklist

When switching to AXIOM for the first time as primary environment:

```
[ ] sudo adduser axiom
[ ] sudo usermod -aG sudo axiom
[ ] su - axiom (or log in as axiom)
[ ] git clone UNEXUSI and MANDELBROT repos
[ ] git config user.name and user.email
[ ] Add AXIOM block to ~/.bashrc
[ ] source ~/.bashrc — confirm "AXIOM environment loaded."
[ ] sudo apt install tmux
[ ] Launch tmux session: tmux new-session -s axiom
[ ] axiom_log "AXIOM primary session initialized"
[ ] Confirm perplexity CLI is accessible
[ ] Pull latest UNEXUSI branch: git pull origin claude/setup-control-center-GCkPL
```

---

## Migration from sauron

There is no hard cutover required. The pattern is:

1. **AXIOM for new work** — all fractal / PRIMAL development begins from `axiom`
2. **sauron stays available** — existing MANDELBROT content remains under sauron until formally migrated
3. **Content enters chain of custody** as it is committed from AXIOM
4. **sauron becomes legacy** — the well that was, before AXIOM was the podium

The MANDELBROT repo (`primehaven` renamed) lives in sauron's profile and can be cloned fresh into AXIOM's home for a clean working copy.

---

## Relationship to UNEXUSI

AXIOM is the **physical instantiation** of the UNEXUSI control center. While UNEXUSI is the repo — the stable center — AXIOM is where it lives in the real world: keyboard, screen, terminal instances, running processes.

```
UNEXUSI (repo / concept) ←→ AXIOM (device / execution)
                              │
                         six aspects running
                         fractal work active
                         chain of custody live
```

---

*Device Registry D-01 | AXIOM | 2026-04-08*
*UNEXUSI Control Center*
