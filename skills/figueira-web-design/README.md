# figueira-web-design

A web design orchestration skill for:
- landing pages;
- e-commerce;
- institutional/corporate websites;
- web apps.

## Purpose

Turn business objective, brand, audience, content, technology and constraints into a web experience that is distinct, usable, persuasive, consistent and technically sustainable — before any implementation.

The skill separates three decisions that tend to get mixed together:
- **mode** — the job of the experience (`landing-page`, `ecommerce`, `website`, `webapp`);
- **visual direction** — design thesis, identity and critique, resolved before code;
- **technical adapter** — the stack (`wordpress-woocommerce`, `shopify`, `react-nextjs`, `generic-web`).

## Structure

```text
figueira-web-design/
├── SKILL.md
├── references/
│   ├── tool-routing.md
│   ├── component-sources.md
│   ├── modes/
│   │   ├── landing-page.md
│   │   ├── ecommerce.md
│   │   ├── website.md
│   │   └── webapp.md
│   ├── adapters/
│   │   ├── wordpress-woocommerce.md
│   │   ├── shopify.md
│   │   ├── react-nextjs.md
│   │   └── generic-web.md
│   └── qa/
│       ├── anti-ai-slop.md
│       ├── design-critique.md
│       └── scorecard.md
├── evals/
│   ├── rubric.md
│   └── cases.md
├── agents/
│   └── openai.yaml
├── assets/
│   └── icon.svg
└── pt-BR/
    (same structure, translated)
```

## Installation

As a local Agent Skill (Claude Code, Codex, environments compatible with `.agents/skills`):

```bash
# copy or symlink this directory to your environment's skills location, e.g.:
cp -r figueira-web-design ~/.claude/skills/figueira-web-design
```

Do not keep more than one copy of the skill across different skills directories in the same environment — that can trigger duplicate-skill warnings.

## Governed component sources

The skill knows when to consult and how to evaluate:

- 21st.dev;
- shadcn/ui;
- Magic UI;
- Aceternity UI;
- React Bits.

They never become mandatory dependencies. `references/component-sources.md` defines an adoption gate covering job fit, coherence, stack, dependencies, performance, accessibility, license and maintainability before any external code is treated as production-ready.

In non-React stacks, these sources are treated mainly as visual/interaction reference; the skill does not introduce React/Next/Tailwind just to copy an effect.

## What this skill does NOT do

- does not automatically install a plugin, theme, package or dependency;
- does not touch production, does not publish, does not deploy;
- does not replace a project's current design system/Brand Board;
- does not assume a component library is an art direction;
- does not fabricate social proof, metrics, stock or data.

## Design principle

This skill is procedural and platform-independent. It carries no institutional manifesto, client data, credentials or internal processes from any specific agency — only reusable web design/development methodology.

## Public-safe scope

This skill intentionally excludes private strategic documents, client information, credentials and internal institutional documentation.

## Localization

The canonical version lives at the repository root, in English. A complete Portuguese (pt-BR) version, mirroring the same file tree, lives under `pt-BR/`.
