# BATCH RESTRUCTURE PLAN
## Full Ecosystem — Sequenced Execution
**Filed:** 2026-04-08 | UNEXUSI Control Center
**Status:** In Progress

---

## Overview

This plan sequences all restructuring work across both repos and devices. Items are ordered by dependency — each block can only proceed after its prerequisites complete. Final block adds upgrade missions.

**Prime Progression applies:** We move 2→3→5→7→11→13→17 — seed, gateway, build, ship, coordinate, vet, archive.

---

## BLOCK 1 — SEED (Prime 2)
*Foundation — must complete before anything else*

- [x] Create `axiom` user on Ubuntu laptop (`uid=1002`, sudo group)
- [x] Clone UNEXUSI and MANDELBROT repos into `/home/axiom/`
- [x] Create workspace, logs, tools directories
- [ ] **Set axiom password** → `passwd axiom` (run as root)
- [ ] **Configure axiom .bashrc** → copy AXIOM environment block from `devices/AXIOM.md`
- [ ] **Verify `su - axiom` works** and "AXIOM environment loaded." appears
- [ ] **Install tmux** → `sudo apt install tmux`
- [ ] **Run control center** → `bash ~/UNEXUSI/scripts/control_center.sh` (first launch as axiom)
- [ ] **Log initialization** → `axiom_log "AXIOM primary session initialized"`

---

## BLOCK 2 — GATEWAY (Prime 3)
*Connect devices and repos — establish the map*

- [x] UNEXUSI CONTROL_CENTER.md created — master registry live
- [x] devices/AXIOM.md filed — D-01 registered
- [x] devices/PIXEL8A.md filed — D-02 registered
- [ ] **GitHub rename confirmed** — verify `devicehaven/primehaven` → `devicehaven/MANDELBROT` is live
- [ ] **Update remote URL** in local clone:
  ```bash
  cd ~/MANDELBROT
  git remote set-url origin https://github.com/devicehaven/MANDELBROT.git
  ```
- [ ] **Add INCUBATOR to CONTROL_CENTER.md** registry as R-03 (planned)
- [ ] **Wire `cc` alias** → add `alias cc="bash ~/UNEXUSI/scripts/control_center.sh"` to axiom .bashrc

---

## BLOCK 3 — BUILD (Prime 5)
*Structure — repos get their architecture*

- [x] MANDELBROT README.md rewritten — fractal identity established
- [x] MANDELKEEP/ created — maw pool with intake/ and effluent/
- [x] .navido/ created — navigo mission system
- [x] UNEXUSI characters/ created — Valthram, Rema, Six Aspects documented
- [ ] **Commit MANDELBROT changes** to branch and push
- [ ] **Create INCUBATOR repo** on GitHub (when AXIOM terminal mode confirmed)
  - Name: `INCUBATOR` under devicehaven or eaprime1
  - Seed with `.navido/missions/INCUBATOR.navido`
  - Add to CONTROL_CENTER.md registry
- [ ] **Add repos/ registry files** in UNEXUSI for each repo
- [ ] **Set up tmux six-aspect session** on AXIOM:
  ```bash
  tmux new-session -d -s axiom -n nexus
  tmux new-window -t axiom -n gateway
  tmux new-window -t axiom -n archive
  tmux new-window -t axiom -n workstream
  tmux new-window -t axiom -n quality
  tmux new-window -t axiom -n distribution
  ```

---

## BLOCK 4 — SHIP (Prime 7)
*Push everything live*

- [ ] **Push UNEXUSI branch** `claude/setup-control-center-GCkPL` — all new files
- [ ] **Push MANDELBROT branch** — README + MANDELKEEP
- [ ] **Merge to main** on UNEXUSI (review first)
- [ ] **Merge to main** on MANDELBROT (review first)
- [ ] **Update axiom clones** to pull from main:
  ```bash
  cd ~/UNEXUSI && git pull origin main
  cd ~/MANDELBROT && git pull origin main
  ```

---

## BLOCK 5 — COORDINATE (Prime 11)
*Cross-concept connections — the gossamer web*

- [ ] **Wire control_center.sh** to read live git status from both repos
- [ ] **Add Perplexity CLI** to axiom environment — test Archive terminal (t3) intake
- [ ] **Link Mandelbrot Tree** from MANDELBROT README → UNEXUSI tree doc
- [ ] **Link UNEXUSI** from MANDELBROT README (already done — verify live URL)
- [ ] **First chain-of-custody conversion** — pick one sauron-era doc, process through MANDELKEEP
- [ ] **Test INCUBATOR isolation** — run a terminal-only session on AXIOM, document the experience

---

## BLOCK 6 — VET (Prime 13)
*Quality and review*

- [ ] **Review all navido missions** — accurate? Complete? Concepts speaking in their own voice?
- [ ] **Review CONTROL_CENTER.md** — does it reflect the actual current state?
- [ ] **Review characters/** — Valthram and Rema need deeper development
- [ ] **Review MANDELKEEP** — does the intake/effluent process actually work with real content?
- [ ] **Perplexity research run** — use queries from MANDELBROT_TREE.md, file results into Archive

---

## BLOCK 7 — ARCHIVE (Prime 17)
*Upgrade missions — advance each concept*
*(Add these as the final step — once everything above is settled)*

- [ ] **UNEXUSI upgrade** → Build prime-indexed UI (each section maps to a prime 2–17)
- [ ] **AXIOM upgrade** → Persistent tmux session that survives logout (tmux server config)
- [ ] **MANDELBROT upgrade** → Automate MANDELKEEP — script that processes intake/ on a schedule
- [ ] **INCUBATOR upgrade** → Define graduation criteria and first experiment brief
- [ ] **Valthram upgrade** → Full entity document — the deep archive character fully realized
- [ ] **Rema upgrade** → Full entity document — the gateway character fully realized
- [ ] **Six Aspects upgrade** → Individual `.navido` missions for each aspect
- [ ] **Gossamer web** → Map the connections — which concepts have threads between them now?
- [ ] **PRIMAL planning** → Begin PRIMAL launch plan — what ALL-CAPS repos, what sequence, what user?

---

## Progress Summary

```
BLOCK 1 — SEED      ████████░░  80%  (password + .bashrc + tmux remaining)
BLOCK 2 — GATEWAY   ██████░░░░  60%  (GitHub rename verification remaining)
BLOCK 3 — BUILD     ████████░░  80%  (INCUBATOR repo + tmux session remaining)
BLOCK 4 — SHIP      ██░░░░░░░░  20%  (commits pending)
BLOCK 5 — COORD     ░░░░░░░░░░   0%  (ready to begin after Block 4)
BLOCK 6 — VET       ░░░░░░░░░░   0%  (after Block 5)
BLOCK 7 — ARCHIVE   ░░░░░░░░░░   0%  (final — upgrade missions)
```

---

*Batch Restructure Plan | 2026-04-08 | UNEXUSI Control Center*
