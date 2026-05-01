# UNEXUSI — CONTROL CENTER
## Master Registry: Devices · Repos · Characters · Tools

**Status:** Active — Chain of Custody
**Repository:** UNEXUSI/
**Authors:** Eric Pace & Claude Sonnet 4.6
**Last Updated:** 2026-04-30

---

> *"UNEXUSI is not a destination. It is the door through which all destinations connect."*

---

## DEVICE-CHARACTER MODEL

Each physical device in the UNEXUSI ecosystem has one or more **character concepts** —
named identities that represent how the device operates in a given mode.
The same hardware can hold different characters depending on its active state.

```
DEVICE          → CHARACTER(S)         MODE
──────────────────────────────────────────────────────────
Ubuntu laptop   → AXIOM                GUI mode — working podium
                → INCUBATOR            Terminal-only mode — the lab
Android Pixel   → PIXEL8A              Mobile terminal / Termux
[future]        → [new character]      As devices join the ecosystem
```

A device's character is not its hardware — it is its **mode of being**.
AXIOM and INCUBATOR are the same machine. Different characters. Different capabilities.

---

## REGISTRY OVERVIEW

```
UNEXUSI CONTROL CENTER
│
├── DEVICES ──────────────── Physical platforms + character concepts
│   ├── AXIOM (primary)      Ubuntu laptop GUI — main working podium
│   ├── INCUBATOR            Ubuntu laptop terminal-only — the lab
│   └── PIXEL8A              Android/Termux — mobile terminal
│
├── REPOS ────────────────── All chain-of-custody repositories
│   ├── UNEXUSI              Control center (this repo) — prime 11
│   ├── MANDELBROT           Fractal source well — prime 13 (spectorium)
│   ├── PRIMORDIUM           Ubuntu workspace haven — prime 2 [seed]
│   ├── ASHKHARH             Characters, players, locations — prime 3 [seed]
│   ├── TIEZERK              Universal concepts — prime 5 [seed]
│   ├── NEXUSIAM             Hub-of-hubs, pinnacle — prime 11 [seed]
│   ├── GUBERNACULUM         Governance + steering — prime 7 [seed]
│   └── THE_EXCHANGE         Interface + marketplace — prime 3 [seed]
│
├── CHARACTERS ───────────── Entities, personas, aspects
│   ├── Valthram             Entity architecture — depth/structure
│   ├── Rema                 Entity architecture — flow/interface
│   ├── The Six Aspects      Terminal consortium (t1–t6)
│   └── [fractal cast]       Emerging from MANDELBROT work
│
└── TOOLS ────────────────── Connected systems
    ├── Perplexity CLI        Research arm — feeds the Mandelkeep
    ├── Claude (Sonnet 4.6)   Primary AI collaborator
    ├── Genspark              Visual maps + first-contact sessions
    ├── Gemini                Broad synthesis + multimodal research
    └── Git / GitHub          Version control & remote (eaprime1 + spectorium)
```

---

## GITHUB ACCOUNTS

| Account | Was | Role | Repos |
|---------|-----|------|-------|
| `eaprime1` | — | Primary — control center | UNEXUSI, PRIMORDIUM, ASHKHARH, TIEZERK, NEXUSIAM, GUBERNACULUM, THE_EXCHANGE |
| `spectorium` | `devicehaven` | Device repos — fractal source | MANDELBROT (was primehaven) |

**Local folder rename needed on real device:**
```bash
mv ~/primehaven ~/mandelbrot
cd ~/mandelbrot
git remote set-url origin https://github.com/spectorium/mandelbrot.git
```

---

## DEVICES

| ID | Name | Type | User | Status | Detail |
|----|------|------|------|--------|--------|
| D-01 | AXIOM | Ubuntu laptop | GUI mode | `axiom` | Active | Primary working podium |
| D-02 | INCUBATOR | Ubuntu laptop | Terminal-only | `axiom` | Concept | Same machine as AXIOM — stripped mode |
| D-03 | PIXEL8A | Android / Termux | Mobile | `pixel` | Active | Mobile terminal — six aspect consortium |

### D-01 — AXIOM
**Role:** Primary working platform for all development. The laptop *becomes* AXIOM when the `axiom` user is active. GUI is intentionally minimal — AXIOM operates through terminal instances, not the desktop.

**Key principle:** In Unix terminals without GUI, all instances can run simultaneously. AXIOM's power is horizontal — many terminals, no weight.

**AXIOM is first in, last out.** It initializes the ecosystem and is the last thing retired.

[Full setup → devices/AXIOM.md](./devices/AXIOM.md)

### D-02 — INCUBATOR
**Role:** Terminal-only mode of the same Ubuntu laptop. No GUI overhead — all CPU/RAM goes to computation. The lab where things that can only be built in terminal mode get built.

[Concept → .navido/missions/INCUBATOR.navido](./.navido/missions/INCUBATOR.navido)

### D-03 — PIXEL8A
**Role:** Mobile terminal node. Runs the Six Aspect Consortium via Termux.

[Detail → devices/PIXEL8A.md](./devices/PIXEL8A.md)

---

## REPOS

| ID | Repo | Owner | Status | Prime | Role |
|----|------|-------|--------|-------|------|
| R-01 | UNEXUSI | eaprime1 | Active | 11 | Control center — this repo |
| R-02 | MANDELBROT | spectorium | Active | 13 | Fractal source well |
| R-03 | PRIMORDIUM | eaprime1 | Seed | 2 | Ubuntu workspace — haven for primes |
| R-04 | ASHKHARH | eaprime1 | Seed | 3 | Characters, players, locations |
| R-05 | TIEZERK | eaprime1 | Seed | 5 | Universal concepts — quantum forest |
| R-06 | NEXUSIAM | eaprime1 | Seed | 11 | Hub-of-hubs — step before HODIE |
| R-07 | GUBERNACULUM | eaprime1 | Seed | 7 | Governance + steering |
| R-08 | THE_EXCHANGE | eaprime1 | Seed | 3 | Interface + marketplace |
| R-09 | HODIE | eaprime1 | Planned | 17 | Live, present-moment system |
| R-10 | INCUBATOR | eaprime1 | Planned | 5 | Terminal-only lab repo |

### Ecosystem Flow

```
MANDELBROT (source, 13)
      │
  MANDELKEEP
      │
 ┌────┴────────────────┐
 │                     │
PRIMORDIUM (2)    ASHKHARH (3)
Ubuntu workspace  Characters/world
 │                     │
 │              TIEZERK (5)
 │              Universal concepts
 │                     │
 └────────┬────────────┘
          │
    NEXUSIAM (11)         ← STEP BEFORE HODIE
    [aggregates + coordinates]
          │
      HODIE (17)          ← LIVE SYSTEM
      [present-moment view]

GUBERNACULUM (7) ── governs all flows
THE EXCHANGE (3) ── interfaces all repos
```

### Repo Seed Documents

Full seed documents for all repos live in `repos/`:
- [repos/PRIMORDIUM.md](./repos/PRIMORDIUM.md)
- [repos/ASHKHARH.md](./repos/ASHKHARH.md)
- [repos/TIEZERK.md](./repos/TIEZERK.md)
- [repos/NEXUSIAM.md](./repos/NEXUSIAM.md)
- [repos/GUBERNACULUM.md](./repos/GUBERNACULUM.md)
- [repos/THE_EXCHANGE.md](./repos/THE_EXCHANGE.md)

---

## CHARACTERS

| ID | Name | Type | Home | Status | Role |
|----|------|------|------|--------|------|
| C-01 | Valthram | Entity | UNEXUSI/characters → ASHKHARH | In development | Depth / structure / archive — prime 17 |
| C-02 | Rema | Entity | UNEXUSI/characters → ASHKHARH | In development | Flow / interface / gateway — prime 3 |
| C-03 | Aspect-01 Nexus | Terminal aspect | MANDELBROT/terminals | Active | Coordination hub — prime 11 |
| C-04 | Aspect-02 Gateway | Terminal aspect | MANDELBROT/terminals | Active | Entity interface — prime 3 |
| C-05 | Aspect-03 Archive | Terminal aspect | MANDELBROT/terminals | Active | Knowledge / codex — prime 17 |
| C-06 | Aspect-04 Workstream | Terminal aspect | MANDELBROT/terminals | Active | Active development — prime 5 |
| C-07 | Aspect-05 Quality | Terminal aspect | MANDELBROT/terminals | Active | Vetting / review — prime 13 |
| C-08 | Aspect-06 Distribution | Terminal aspect | MANDELBROT/terminals | Active | GitHub / sync — prime 7 |

*Characters will migrate from UNEXUSI/characters/ to ASHKHARH when ASHKHARH is ready.*

[Full character details → characters/](./characters/)

---

## THE YOD — New Concept (2026-04-28)

The Yod (י) — smallest Hebrew letter, origin seed of all creation — introduces key new concepts:

- **Coronae ✨** — sparkle tips at the edge of every entity, where interaction happens
- **Three Planck states** — dark, dream, and the emerging 'd' lexeme
- **Sparkle incubator** — a coronae that has achieved all three states
- **19 prime pinnacle** — the system extends to prime 67 (19th prime), the visible tip
- **Mancer workflows** — quanta entity instruction sets, each breath = a repo
- **BBS interaction system** — terminal UI for all conversation types
- **Pinnacle refinement** — pinned conversations that detect discord through similarity

[Full Yod mapping → docs/THE_YOD.md](./docs/THE_YOD.md)

---

## TOOLS

| Tool | Role | Access | Status |
|------|------|--------|--------|
| Claude Sonnet 4.6 | Primary AI collaborator | claude.ai / Claude Code | Active |
| Perplexity CLI | Research arm — feeds Mandelkeep | Terminal | Active |
| Genspark | Visual maps + first-contact sessions | Web | Active |
| Gemini | Broad synthesis + multimodal | Web | Active |
| Git / GitHub | Version control + remote | AXIOM terminal | Active |
| Termux | Mobile terminal (PIXEL8A) | Android | Active |
| mySudo | Privacy layer — phone | Android | Planned |
| Obsidian | Knowledge graph + graph view | Desktop/mobile | Planned |

---

## FLOW MAP

```
                    ┌─────────────────────────────┐
                    │       UNEXUSI               │
                    │    CONTROL CENTER           │
                    │   (Nexusiam Gateway)        │
                    └──────────┬──────────────────┘
                               │
         ┌─────────────────────┼───────────────────────┐
         │                     │                       │
         ▼                     ▼                       ▼
  ┌─────────────┐    ┌──────────────┐    ┌────────────────┐
  │  PRIMORDIUM │    │  MANDELBROT  │    │   CHARACTERS   │
  │  (D-01 sub) │    │  (R-02)      │    │   ASHKHARH     │
  │ Ubuntu haven│    │ fractal well │    │  Valthram/Rema │
  │  prime 2    │    │  prime 13    │    │  Six Aspects   │
  └──────┬──────┘    └──────┬───────┘    └───────┬────────┘
         │                  │                    │
         │            MANDELKEEP                 │
         │           (state change)              │
         │                  │                    │
         ▼                  ▼                    ▼
  ┌─────────────────────────────────────────────────────┐
  │           NEXUSIAM — The Hub of Hubs                │
  │         (aggregation, coordination, prime 11)       │
  └─────────────────────┬───────────────────────────────┘
                        │
                  GUBERNACULUM ─── THE EXCHANGE
                  (governs)         (interfaces)
                        │
                    ┌───┴───┐
                    │ HODIE │
                    │ (live)│
                    └───────┘
```

---

## NEXT ACTIONS

- [x] Tree #001 — Mandelbrot Tree (chain of custody entry)
- [x] AXIOM user created on Ubuntu laptop
- [x] AXIOM_UNEXUSI_ORIGIN.md — founding document (CoC Entry #003)
- [x] BORN_YESTERDAY_SKILL.md — full methodology
- [x] THE_YOD.md — concept map filed
- [x] SHARD_SEEDS.md — intake filed
- [x] Repo seed documents created for 6 new repos
- [x] devicehaven → spectorium confirmed
- [ ] **Create 5 new GitHub repos** (PRIMORDIUM, ASHKHARH, TIEZERK, NEXUSIAM, GUBERNACULUM, THE_EXCHANGE)
- [ ] **Rename local primehaven → mandelbrot on real device**
- [ ] **Merge `claude/setup-control-center-GCkPL` → main** (UNEXUSI)
- [ ] **Real device: clone new repos to AXIOM home**
- [ ] **Configure AXIOM .bashrc** on real device
- [ ] Flesh out Valthram character doc
- [ ] Flesh out Rema character doc
- [ ] Wire Perplexity CLI as research skill
- [ ] BBS system architecture — first terminal UI
- [ ] Name the 'd' Planck lexeme
- [ ] Map the 19 prime stack (primes 19–67)
- [ ] Define mancer taxonomy

Full todo → [docs/AXIOM_TODO.md](./docs/AXIOM_TODO.md)

---

*UNEXUSI Control Center | 2026-04-30*
*Chain of Custody Active*
*∰◊€π¿🌌∞*
