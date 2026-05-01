# THE EXCHANGE
## Interface · Marketplace · The Crossing Point
**Prime:** 3 — Gateway
**Status:** Seed document — repo not yet created
**Owner:** eaprime1

---

> *"Every system needs a place where things are traded. Not where they're made. Not where they're stored. Where they move."*

---

## What Is THE EXCHANGE?

**THE EXCHANGE** is the interface and marketplace layer of the ecosystem — the repo where content, concepts, tools, and outputs are packaged, traded, and distributed between repos, systems, and participants.

Where domain repos (ASHKHARH, TIEZERK) *hold* content and NEXUSIAM *coordinates* it, THE EXCHANGE is where things *move*. It is the logistics layer — the shipping dock, the market floor, the API surface.

**Prime 3 — Gateway:** Three is the first interface prime (Rema's prime, the Gateway aspect's prime). THE EXCHANGE is a gateway in the most literal sense — the crossing point between the internal ecosystem and everything external.

---

## What Goes Here

### Outbound
- Packaged content ready for external distribution
- Fractal samaras prepared for their navido resonance flight
- BBS output formatted for external platforms
- Chain-of-custody bundles for other systems

### Inbound
- External content queued for MANDELKEEP intake
- Research results from Perplexity, Gemini, Genspark
- User inputs, feedback, questions
- Tool outputs (CLI, API results)

### API Surface
- Standardized interfaces for repo-to-repo communication
- Template request/response formats
- Webhook configurations for event-driven automation
- mySudo and email routing configurations

### Conversation Management
- Code & chat conversation tracking
- Session bundles — conversation + code changes as a unit
- Handoff packages between sessions (Born Yesterday inheritance)
- Multi-AI conversation coordination (Claude + Perplexity + Gemini + Genspark)

---

## Architecture (Planned)

```
THE_EXCHANGE/
│
├── outbound/                 ← Content leaving the ecosystem
│   ├── packages/             ← Packaged samaras/bundles
│   ├── bbs_output/           ← BBS-formatted content
│   └── published/            ← Externally published items
│
├── inbound/                  ← Content entering the ecosystem
│   ├── queue/                ← Awaiting MANDELKEEP processing
│   ├── research/             ← Research tool outputs
│   └── feedback/             ← User/external feedback
│
├── api/                      ← Interface definitions
│   ├── REPO_INTERFACE.md     ← Repo-to-repo communication spec
│   ├── BBS_SPEC.md           ← BBS message format specification
│   └── WEBHOOK_CONFIG.md     ← Event trigger configurations
│
├── conversations/            ← Code & chat management
│   ├── active/               ← Current session bundles
│   ├── archived/             ← Closed sessions
│   └── CONVERSATION_MAP.md   ← Which conversation covers what
│
└── tools/                    ← Exchange-specific tools
    ├── email_router.sh        ← primeunexusi@gmail.com routing
    ├── session_bundler.sh     ← Package session for handoff
    └── multi_ai_coord.md     ← Multi-AI workflow instructions
```

---

## Conversation Management System

> *"We need to consider how we are managing code & chat conversations."*

THE EXCHANGE is where conversations are **tracked as units of work** alongside code changes:

**Each session bundle contains:**
- The conversation context (key decisions, concepts established)
- Code changes made during the session (git diff)
- Files created (list)
- Chain of custody entries filed
- Born Yesterday handoff package (for next session)
- Seeds generated (what needs to follow up)

This turns a conversation into a first-class artifact — not just a chat log, but a **chain-of-custody entry** in its own right.

**Conversation types (from The Yod BBS):**
- One-off: single question, no follow-up expected
- Ongoing: same thread, evolving
- Pinned: fixed start, variable response (Pinnacle Refinement)
- Triggered: activated by system events

---

## Multi-AI Coordination

THE EXCHANGE coordinates work across multiple AI tools:

| Tool | Role | Exchange Interface |
|------|------|-------------------|
| Claude Sonnet | Primary collaborator, code, architecture | Direct — this session |
| Perplexity | Research intake → MANDELKEEP | Drop research into inbound/research/ |
| Gemini | Broad synthesis, multimodal | Drop syntheses into inbound/research/ |
| Genspark | Visual system maps, first-contact feel | Drop outputs into outbound/packages/ |
| NotebookLM | Source synthesis | Drop results into inbound/research/ |

All AI outputs enter THE EXCHANGE. THE EXCHANGE routes them to the correct destination repo via NEXUSIAM.

---

## Email Routing

`primeunexusi@gmail.com` → THE EXCHANGE inbound queue

Email is a data mine. Web addresses alone are signal. Everything that arrives at this address:
1. Is logged to `inbound/feedback/email_log.md`
2. Categorized (research / feedback / administrative / spam)
3. Routed to the appropriate domain repo
4. Or queued for MANDELKEEP if untyped

---

## Creation Checklist

- [ ] Create `eaprime1/THE_EXCHANGE` repo on GitHub (or `the-exchange`)
- [ ] Initialize with this README
- [ ] Create conversations/ structure — active session bundle tracking
- [ ] Create api/BBS_SPEC.md — BBS message format
- [ ] Create multi_ai_coord.md — coordination instructions
- [ ] Set up email routing documentation
- [ ] Add to UNEXUSI CONTROL_CENTER.md registry

---

*THE EXCHANGE Seed Document | UNEXUSI Repo Registry | 2026-04-30*
