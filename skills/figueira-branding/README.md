# figueira-branding

A branding orchestration skill for Claude Code / Agent Skills — creates, audits, refreshes,
rebrands and extends brands through an evidence-driven 13-gate workflow.

## Purpose

Most "make my brand/logo" requests jump straight to palette and typography without going through
positioning, research or differentiation. This skill enforces a sequence: context → brand problem
→ research/evidence → strategy → naming (when applicable) → verbal identity → three distinct
visual territories → critique/selection → identity system → applications → brand
guidelines/governance → final QA → handoff.

## Modes

| Mode | When to use |
|---|---|
| `new-brand` | new brand, new product, no existing brand system |
| `rebrand` | a meaningful strategic change (positioning, audience, name, identity) |
| `brand-refresh` | strategy is still valid, expression has aged/become inconsistent |
| `brand-audit` | diagnosis before deciding whether anything needs to change |
| `identity-extension` | new line/sub-brand/product inside an existing brand |

## Depth

`LEAN` (small/one-off projects) → `STANDARD` (default for most projects) → `DEEP` (high-impact
rebrand, mature brand, multiple stakeholders, complex rollout).

## Structure

```
SKILL.md                          # main instructions (full workflow, 13 gates)
references/
  modes/                          # one file per mode (new-brand, rebrand, ...)
  phases/                         # research, equity audit, strategy, naming/verbal,
                                   # visual territories, logo system, guidelines, governance
  qa/                              # anti-ai-slop, critique, final scorecard
  outputs/                        # brand package deliverable spec
  specialist-routing.md           # when/how to invoke external tools/skills per gate
agents/openai.yaml                # metadata for exposure on ChatGPT/Codex/API/Atlas
assets/icon.svg
evals/
  rubric.md                       # qualitative evaluation criteria
  cases.md                        # test scenarios
```

`SKILL.md` is always loaded; `references/` files are loaded on demand (progressive disclosure),
depending on the mode and phase in progress.

## Usage

Ask to create, audit, refresh or rebrand a brand normally — the skill self-activates from the
description in `SKILL.md`. You can also be explicit:

> "Use the figueira-branding skill, mode `new-brand`, depth `LEAN`, to create the brand for
> [business]."

## Design principle

This is a **procedural, not institutional** skill. It carries a branding method — gates,
evidence, visual territories, governance — and does not depend on any company, internal agent or
specific knowledge system to work. Any institutional context (your organization's name, clients,
internal tools) must be supplied by whoever is using the skill, at the time of use.

## Public-safe scope

This package was consolidated from an internal skill, with removal of institutional/proprietary
content: references to a specific organization, internal agents, internal knowledge-base paths
and company-specific approval flows. What remains is generic, reusable branding methodology.

**Does not include:** private strategic documents, client data, credentials, or any internal
institutional documentation.
