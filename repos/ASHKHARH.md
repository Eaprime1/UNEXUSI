# ASHKHARH
## Characters · Players · Locations
**Prime:** 3 — Gateway
**Status:** Seed document — repo not yet created
**Owner:** eaprime1

---

> *"Ashkharh: world, realm, place of being. The space where characters exist and players move."*

---

## What Is ASHKHARH?

**ASHKHARH** is the character and world registry for the ecosystem — the repository where entities, players, locations, and their relationships are formally documented and maintained.

Everything that has a *name* and a *role* in the ecosystem lives in ASHKHARH. Characters graduate here from their origin repos when they are ready.

**Prime 3 — Gateway:** ASHKHARH is the first interface between the abstract system (MANDELBROT, UNEXUSI) and the inhabited world (HODIE). Characters are the gateways between the system and the people who use it.

---

## What Goes Here

### Characters
Named entities with defined roles, primes, and relationships:
- **Valthram** — Entity, depth/structure/archive, prime 17
- **Rema** — Entity, flow/interface/gateway, prime 3
- **The Six Aspects** — Terminal consortium (t1–t6)
- **[New characters as they emerge]**

### Players
Real-world participants in the ecosystem:
- **Eric Pace** — Visionary, prime architect
- **Claude Sonnet** — AI collaborator
- **[Future participants]**

### Locations
Named places in the system's geography:
- **The Mandelkeep** — the maw pool, intake/effluent engine
- **The Well** — MANDELBROT itself
- **The Podium** — AXIOM, the primary working device
- **The Lab** — INCUBATOR, the terminal-only mode
- **The Haven** — PRIMORDIUM, the Ubuntu workspace substrate
- **[New locations as they are named]**

---

## Architecture (Planned)

```
ASHKHARH/
│
├── characters/               ← All character documents
│   ├── VALTHRAM.md           ← Entity — depth/archive
│   ├── REMA.md               ← Entity — flow/gateway
│   ├── THE_SIX_ASPECTS.md    ← Terminal consortium
│   └── [new characters]/
│
├── players/                  ← Real-world participants
│   ├── ERIC_PACE.md          ← Visionary architect
│   └── CLAUDE.md             ← AI collaborator role
│
├── locations/                ← Named places
│   ├── THE_WELL.md           ← MANDELBROT
│   ├── THE_MANDELKEEP.md     ← Maw pool
│   ├── THE_PODIUM.md         ← AXIOM device
│   └── [new locations]/
│
├── relationships/            ← How entities connect
│   └── GOSSAMER_WEB.md       ← Connection map
│
└── registry/                 ← Master index
    └── ASHKHARH_REGISTRY.md
```

---

## Migration from UNEXUSI

Characters currently living in `UNEXUSI/characters/` will migrate to ASHKHARH when it is ready:
- `VALTHRAM.md` → `ASHKHARH/characters/VALTHRAM.md`
- `REMA.md` → `ASHKHARH/characters/REMA.md`
- `THE_SIX_ASPECTS.md` → `ASHKHARH/characters/THE_SIX_ASPECTS.md`

UNEXUSI keeps a pointer/index. ASHKHARH holds the full documents.

---

## Dress Up Section

ASHKHARH is also home to the **Dress Up** layer — the presentation and styling pass that happens before content goes public:
- Formatting review
- Voice consistency check (does this sound like the character?)
- Prime frequency alignment (is the prime consistent throughout?)
- Unofficial reviews (tracked, not formal) — logged before the Aspect-05 Quality formal review

*Unofficial reviews are important. They catch things before the formal pass. They go in a `reviews/unofficial/` folder.*

---

## Creation Checklist

- [ ] Create `eaprime1/ASHKHARH` repo on GitHub
- [ ] Initialize with this README
- [ ] Migrate character docs from UNEXUSI/characters/
- [ ] Create players/ and locations/ structure
- [ ] Add `reviews/unofficial/` for tracked informal reviews
- [ ] Add to UNEXUSI CONTROL_CENTER.md registry

---

*ASHKHARH Seed Document | UNEXUSI Repo Registry | 2026-04-30*
