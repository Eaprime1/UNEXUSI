# UNEXUSI — CONTROL CENTER
## Master Registry: Devices · Repos · Characters · Tools

**Status:** Active — Chain of Custody
**Repository:** UNEXUSI/
**Authors:** Eric Pace & Claude Sonnet 4.6
**Last Updated:** 2026-04-08

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
│   ├── UNEXUSI              Control center (this repo)
│   ├── MANDELBROT           Fractal source — renamed primehaven
│   └── [PRIMAL repos]       ALL-CAPS live system (at launch)
│
├── CHARACTERS ───────────── Entities, personas, aspects
│   ├── Valthram             Entity architecture — depth/structure
│   ├── Rema                 Entity architecture — flow/interface
│   ├── The Six Aspects      Terminal consortium (t1–t6)
│   └── [fractal cast]       Emerging from MANDELBROT work
│
└── TOOLS ────────────────── Connected systems
    ├── Perplexity CLI        Research arm — feeds the Mandelkeep
    ├── Claude (Sonnet)       Primary AI collaborator
    └── Git / GitHub          Version control & remote
```

---

## DEVICES

| ID | Name | Type | User | Status | Detail |
|----|------|------|------|--------|--------|
| D-01 | AXIOM | Ubuntu laptop | GUI mode | `axiom` | Active | Primary working podium — PRIMAL dev |
| D-02 | INCUBATOR | Ubuntu laptop | Terminal-only | `axiom` | Concept | Same machine as AXIOM — stripped mode |
| D-03 | PIXEL8A | Android / Termux | Mobile | `pixel` | Active | Mobile terminal — six aspect consortium |

### D-01 — AXIOM
**Role:** Primary working platform for all PRIMAL / fractal development.
The laptop *becomes* AXIOM when the `axiom` user is active. The GUI is intentionally minimal — AXIOM operates through terminal instances, not the desktop.

**Key principle:** In Unix terminals without GUI, all instances can run simultaneously. AXIOM's power is horizontal — many terminals, no weight.

[Full setup → devices/AXIOM.md](./devices/AXIOM.md)

### D-02 — PIXEL8A
**Role:** Mobile terminal node. Runs the Six Aspect Consortium via Termux.
The Pixel8a work (t1–t6 terminals, `.bit` BBS backbone) is peer content — reference, not the primary fractal work. *Pixel is play. Fractal is work.*

[Detail → devices/PIXEL8A.md](./devices/PIXEL8A.md)

---

## REPOS

| ID | Repo | Owner | Branch | Status | Role |
|----|------|-------|--------|--------|------|
| R-01 | UNEXUSI | eaprime1 | `main` / `claude/setup-control-center-GCkPL` | Active | Control center |
| R-02 | MANDELBROT | devicehaven | `main` | Renaming | Fractal source — was primehaven |
| R-03 | [PRIMAL repos] | TBD | — | Planned | ALL-CAPS live system at launch |

### R-01 — UNEXUSI
The Nexusiam Gateway. This repo is the stable center — everything else orbits it.
- Complexity framework, entity systems, math engine
- Control center (this file)
- Mandelbrot Tree (chain of custody Tree #001)
- Characters, devices, repo registry

### R-02 — MANDELBROT
The ancient fractaled well. Renamed from `primehaven`.
- All fractal source content lives here
- The Mandelkeep draws from it — documents enter, change state, become seeds
- The `sauron` user profile is the working environment here; content converts to chain-of-custody as it builds

### R-03 — PRIMAL Repos (planned)
ALL-CAPS repos that will form the live system at PRIMAL launch:
- Full chain of custody
- Seeded from MANDELBROT effluent
- Coordinated through UNEXUSI control center

---

## CHARACTERS

| ID | Name | Type | Home | Status | Role |
|----|------|------|------|--------|------|
| C-01 | Valthram | Entity | UNEXUSI/entities/valthram | In development | Depth / structure / archive |
| C-02 | Rema | Entity | UNEXUSI/entities/rema | In development | Flow / interface / gateway |
| C-03 | Aspect-01 Nexus | Terminal aspect | MANDELBROT/terminals | Active | Coordination hub (11-prime) |
| C-04 | Aspect-02 Gateway | Terminal aspect | MANDELBROT/terminals | Active | Entity interface (3-prime) |
| C-05 | Aspect-03 Archive | Terminal aspect | MANDELBROT/terminals | Active | Knowledge / codex (17-prime) |
| C-06 | Aspect-04 Workstream | Terminal aspect | MANDELBROT/terminals | Active | Active development (5-prime) |
| C-07 | Aspect-05 Quality | Terminal aspect | MANDELBROT/terminals | Active | Vetting / review (13-prime) |
| C-08 | Aspect-06 Distribution | Terminal aspect | MANDELBROT/terminals | Active | GitHub / sync (7-prime) |

[Full character details → characters/](./characters/)

---

## TOOLS

| Tool | Role | Access | Cost |
|------|------|--------|------|
| Claude Sonnet 4.6 | Primary AI collaborator | claude.ai / Claude Code | Active |
| Perplexity CLI | Research arm — feeds Mandelkeep | Terminal | Active |
| Git / GitHub | Version control + remote | AXIOM terminal | Free |
| Termux | Mobile terminal (PIXEL8A) | Android | Free |

### Perplexity as Research Skill
The Perplexity CLI is positioned as the **research intake** for the Mandelkeep. Queries flow in, deep references flow out, outputs land in UNEXUSI docs. This is a candidate for a formal skill/hook once AXIOM is configured.

---

## FLOW MAP

```
                    ┌─────────────────────────────┐
                    │       UNEXUSI               │
                    │    CONTROL CENTER           │
                    │   (Nexusiam Gateway)        │
                    └──────────┬──────────────────┘
                               │
           ┌───────────────────┼───────────────────┐
           │                   │                   │
           ▼                   ▼                   ▼
    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
    │   AXIOM     │    │ MANDELBROT  │    │  CHARACTERS │
    │  (D-01)     │    │   (R-02)    │    │  Valthram   │
    │ Ubuntu dev  │    │ fractal src │    │  Rema       │
    │  platform   │    │  maw pool   │    │  Aspects    │
    └──────┬──────┘    └──────┬──────┘    └──────┬──────┘
           │                  │                  │
           │            MANDELKEEP               │
           │           (state change)            │
           │                  │                  │
           └──────────────────┼──────────────────┘
                              │
                    fractal samaras (seeds)
                              │
                    ┌─────────┴─────────┐
                    │  PRIMAL REPOS     │
                    │  (ALL-CAPS live   │
                    │   system)         │
                    └───────────────────┘
```

---

## NEXT ACTIONS

- [x] Tree #001 — Mandelbrot Tree (chain of custody entry)
- [ ] Setup AXIOM user on Ubuntu laptop
- [ ] Rename `primehaven` → `MANDELBROT` on GitHub
- [ ] Flesh out Valthram character doc
- [ ] Flesh out Rema character doc
- [ ] Define PRIMAL repo list (ALL-CAPS)
- [ ] Wire Perplexity CLI as research skill

---

*UNEXUSI Control Center | 2026-04-08*
*Chain of Custody Active*
