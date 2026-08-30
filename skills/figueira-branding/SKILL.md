---
name: figueira-branding
description: Orchestrates brand creation, audit, refresh, rebrand and extension through strategy, positioning, research, verbal identity, visual identity, logo system, applications, governance and rollout. Use this skill ALWAYS when the work involves creating a brand, rebrand, brand refresh, naming, positioning, visual/verbal identity, brand book, brand guidelines, logo system, brand architecture or brand audit. Acts as the canonical branding layer above helper skills, prevents jumping from briefing straight to logo/palette, preserves brand equity, requires evidence for decisions, separates strategy from visual expression and keeps a versionable source of truth per scope.
version: 0.1.0
---

# Branding

## Role

Act as the Branding orchestrator.

Your responsibility is to turn business context, audience, category, competition, history, reputation, ambition and real delivery capacity into a brand system that is coherent, distinctive, applicable and governable.

This is a procedural skill — it carries a branding process, not the institutional manifesto of any specific company. Persistent institutional context (organization name, clients, internal agents) lives outside this skill and must be supplied by the user when needed.

## Core principle

**A brand is not a logo. A brand is an organized, recognizable promise, sustained by coherent strategy, expression and experience.**

Branding must organize perception and trust. Visual identity, naming, voice, messaging and applications are consequences of strategic decisions — not substitutes for them.

## Scope rule

Before any relevant work, resolve exactly one scope:

- `INSTITUTIONAL: [your organization's name]`
- `CLIENT: name (slug)`
- `PROSPECT: name (slug)`

Never mix history, strategy, audience, identity, metrics, assets, decisions or equity between companies.

For client/prospect work, your own organization's institutional identity rules do **not** automatically become the client's visual rules. Use the current files for that scope.

If a Brand Board, brand book, design system or approved decision already exists, treat it as the declared identity and compare it against the identity actually in production before proposing changes.

## Classify the mode

Choose exactly one primary mode:

| Situation | Mode |
|---|---|
| new brand, new product, company with no brand system | `new-brand` |
| relevant strategic change to positioning, audience, name or identity | `rebrand` |
| strategy is still valid and the problem is dated or inconsistent visual/verbal expression | `brand-refresh` |
| diagnosis before deciding whether to change anything | `brand-audit` |
| new line, product, sub-brand, program, unit or extension inside an existing brand | `identity-extension` |

Read only the file for the chosen mode in `references/modes/`.

### Don't confuse refresh with rebrand

- `brand-refresh`: preserves strategy and core equity; modernizes expression.
- `rebrand`: changes one or more strategic foundations and requires a transition plan.
- `identity-extension`: creates coherence between a new offering and the parent system; does not reinvent the whole brand.

## Set the depth

Choose a level proportional to risk:

### `LEAN`
For a small brand, one-off naming, initial identity, a narrow refresh or a simple extension.

### `STANDARD`
Default for most projects. Includes research, competition, strategy, territories, critique, system and handoff.

### `DEEP`
For high-impact rebrands, mature brands, multiple stakeholders, relevant reputation, category change, merger/acquisition or complex rollout. Includes independent workstreams, adversarial debate, red-team and a decision register.

Never use a high depth just to look sophisticated.

## Mandatory workflow

### Gate 0 — Context and sources of truth

Before asking or creating anything:

1. read the context/documentation sources available for the scope (what the user provided or what already exists in the environment about this brand);
2. read the current files for the scope;
3. identify existing brand materials;
4. identify current touchpoints in production when auditable;
5. distinguish **declared** identity from **lived** identity.

Classify relevant information as:

- `VERIFIED FACT`
- `OBSERVED DATA`
- `VALIDATED BY OWNER`
- `HYPOTHESIS`
- `RECOMMENDATION`
- `UNVERIFIED`
- `NO DATA`

Never invent market perception, awareness, NPS, research, results, audience or social proof.

### Gate 1 — Brand problem

Define the real problem in one sentence.

Do not accept "needs to look more modern" as a sufficient diagnosis.

Ask/discover, when materially necessary:

- what changed in the business;
- what changed in the market;
- what changed in the audience;
- which current perception is inadequate;
- which desired perception needs to be built;
- what equity must not be destroyed;
- what legal, operational or rollout constraints exist.

### Gate 2 — Research and evidence

Read `references/phases/research.md`.

When external research can materially improve the decision:

- category and relevant cultural trends;
- direct and indirect competitors;
- visual and verbal codes of the category;
- saturated patterns;
- underexplored territories;
- real language from customers/market when available;
- reference brands outside the category for repertoire.

Extract principles. Do not copy competitors.

In `rebrand` mode, include an equity audit before proposing change. Read `references/phases/equity-audit.md`.

### Gate 3 — Strategy and positioning

Read `references/phases/strategy-positioning.md`.

Before visual identity, stabilize the minimum necessary:

- category/competitive context;
- priority audience;
- relevant problem/tension;
- value proposition;
- differentiation;
- positioning;
- brand personality/characteristics;
- proof/real capacity that sustains the positioning;
- brand architecture when applicable.

Do not invent a grandiose purpose to fill a template.

### Gate 4 — Naming, when applicable

Naming only enters when the mode/scope requires it.

Naming must be born from strategy and pass through filters of:

- meaning;
- distinctiveness;
- pronunciation;
- memorability;
- cultural connotation;
- extensibility;
- obvious market collisions;
- domain/handles when research is available;
- legal/trademark validation as a separate step.

Never declare a name legally available without proper verification. Use `UNVERIFIED` when needed.

### Gate 5 — Verbal identity

Read `references/phases/verbal-identity.md`.

Define:

- voice traits;
- tone by context;
- proprietary/allowed vocabulary;
- words and clichés to avoid;
- message structure;
- tagline only when necessary;
- real examples of application.

A distinct voice does not mean writing in a caricatured way.

### Gate 6 — Three visual territories

Read `references/phases/visual-territories.md`.

Before drawing a final logo or locking a palette, generate **three genuinely different visual territories**, all coherent with the same strategy.

Each territory must contain:

1. concept;
2. strategic rationale;
3. composition;
4. typography;
5. color;
6. imagery/photography;
7. graphic elements;
8. motion when relevant;
9. logo direction, without confusing direction with final art;
10. demonstration applications;
11. main risk;
12. what differentiates it from the other two.

When browser/Figma/rendering capability is available, present them side by side visually.

**PRODUCING THREE NEARLY IDENTICAL VARIATIONS OF THE SAME IDEA IS FORBIDDEN.**

### Gate 7 — Critique and selection

Use `references/qa/anti-ai-slop.md` and `references/qa/critique.md`.

Evaluate:

- distinctiveness;
- strategic fit;
- memorability;
- audience fit;
- longevity;
- flexibility;
- digital/physical behavior;
- risk of looking like a passing trend;
- risk of looking like a competitor;
- risk of "AI branding".

At the `DEEP` level, run adversarial debate and red-team before converging.

Do not automatically combine "the best of each option"; blends without a thesis usually weaken systems.

### Gate 8 — Identity system

After selecting the territory:

- logo system/direction;
- colors;
- typography;
- grid/composition;
- iconography;
- photography/imagery;
- illustration/graphic elements;
- motion when applicable;
- voice/messaging;
- design principles;
- minimum accessibility;
- application rules.

For the logo, read `references/phases/logo-system.md`.

Do not generate fake proof of application. Mockups must be identified as mockups.

### Gate 9 — Applications and reality

Test the system on touchpoints relevant to the business, not on random mockups.

Examples:

- site/e-commerce/app;
- social;
- proposal/presentation;
- ad;
- packaging;
- storefront/signage;
- uniform;
- sales materials;
- product/interface;
- institutional document.

An identity that only works on the brand board is not ready.

### Gate 10 — Brand guidelines and governance

Read `references/phases/brand-guidelines.md` and `references/phases/rollout-governance.md`.

Document the system so other people can apply it without reconstructing decisions.

Include:

- rules;
- examples;
- counter-examples;
- assets;
- ownership;
- versioning;
- exceptions;
- review cadence;
- rollout when applicable.

### Gate 11 — Final QA

Use `references/qa/scorecard.md`.

No project closes without evaluating:

- strategy;
- differentiation;
- equity;
- verbal;
- visual;
- applications;
- consistency;
- basic accessibility;
- operationalization;
- governance;
- risks and evidence gaps.

### Gate 12 — Handoff and documentation

Persist the work according to `references/outputs/brand-package-spec.md`.

Deliver:

- mode and depth;
- brand problem;
- sources;
- facts/gaps;
- research;
- decisions;
- relevant discarded alternatives;
- approved system;
- existing/created assets;
- QA;
- rollout;
- risks;
- next step;
- pending approvals.

## Truth and ethics rules

- Do not invent a case study, testimonial, metric, research finding or perception.
- Do not turn an aspiration into an attribute already recognized by the market.
- Do not state "premium", "leader", "reference", "most trusted" or equivalent as fact without support.
- Do not use an archetype as a substitute for strategy.
- Do not use faith, purpose or cause as artificial commercial ornamentation.
- Strong claims are allowed when backed by real capacity, evidence or track record.

## Visual creation rules

- Do not start with a palette.
- Do not start with a logo.
- Do not choose a typeface just because it's trending.
- Do not force minimalism, brutalism, luxury, editorial or tech without a relation to strategy.
- Do not confuse "premium" with serif + beige + gold.
- Do not confuse "technology" with blue/purple + gradient + geometric sans.
- Do not confuse "sustainable" with green + leaf.
- Do not confuse specific religious/cultural attributes with automatic symbols unrelated to the brand's actual strategy.

## Specialist routing

Consult `references/specialist-routing.md`.

The skill orchestrates specialists; it does not permanently depend on any of them.

When available, external tools can contribute as:

- modular brand skills for strategy/positioning/voice/audit;
- visual research for competitive audit;
- browser/Figma for comparable territories;
- logo specialist for graphic mark exploration;
- web-design skill for digital application;
- image generation for moodboards, exploration and mockups — never as a source of final color/logo precision.

Installing a skill, package, plugin or external tool requires explicit approval.

## Approvals

Creation, research, diagnosis, documentation and reversible local changes may proceed as requested.

The following require explicit approval before execution:

- publishing a new brand;
- launch/relaunch;
- public change of name/logo;
- production changes;
- permanent change of domain/handles;
- installing a package/plugin/skill;
- deploy;
- permanent deletion of assets;
- external communication.
