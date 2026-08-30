# Figueira Marketing Skills

Public, reusable agent skills maintained by Figueira Marketing.

This repository contains technical, portable skills designed for AI coding and agent environments. Skills are intentionally self-contained and do not depend on private company manifestos, internal strategy documents, client data, or proprietary Figueira context.

## Repository structure

```text
figueira-marketing-skills/
├── README.md
├── CHANGELOG.md
├── docs/
│   ├── INSTALLATION.md
│   └── CONTRIBUTING.md
└── skills/
    ├── figueira-prompt-optimizer/
    │   ├── SKILL.md
    │   ├── README.md
    │   ├── CHANGELOG.md
    │   ├── references/
    │   │   ├── core/
    │   │   ├── modalities/
    │   │   └── targets/
    │   └── evals/
    ├── figueira-branding/
    │   ├── SKILL.md
    │   ├── README.md
    │   ├── CHANGELOG.md
    │   ├── references/
    │   ├── agents/openai.yaml
    │   ├── assets/
    │   ├── evals/
    │   └── pt-BR/            # full Portuguese (Brazil) mirror
    ├── figueira-copywriting/
    │   ├── SKILL.md
    │   ├── README.md
    │   ├── CHANGELOG.md
    │   ├── references/
    │   ├── agents/openai.yaml
    │   ├── assets/
    │   ├── evals/
    │   └── pt-BR/            # full Portuguese (Brazil) mirror
    └── figueira-web-design/
        ├── SKILL.md
        ├── README.md
        ├── CHANGELOG.md
        ├── references/
        ├── agents/openai.yaml
        ├── assets/
        ├── evals/
        └── pt-BR/            # full Portuguese (Brazil) mirror
```

## Available skills

### figueira-prompt-optimizer

Transforms rough user instructions into optimized, destination-aware prompts for coding, text, image and video systems.

Highlights:
- target-aware prompt compilation;
- multimodal routing for text, code, image and video;
- separate handling for text-to-image, text-to-video, image-to-video, editing and reference workflows;
- provider/surface distinction, including Gemini vs Google Flow;
- progressive disclosure: target-specific references are loaded only when needed;
- no dependency on private Figueira documents.

See `skills/figueira-prompt-optimizer/README.md`.

### figueira-copywriting

Orchestrates high-conversion, high-retention copywriting across channels: landing pages, sales pages, e-commerce, ads, email, social posts/scripts, short video, VSL, advertorials, WhatsApp messages, and audits of existing copy.

Highlights:
- structured gates for context, VOC, offer, awareness/sophistication, Big Idea, mechanism, hooks and storytelling;
- persuasion, truth, and compliance checks before publication;
- CRO and QA scorecards, plus test/variant playbooks across 11 channels;
- defers brand voice/strategy and visual/UX hierarchy to dedicated branding and design disciplines;
- available in English (canonical) and a full Portuguese (Brazil) mirror under `pt-BR/`.

See `skills/figueira-copywriting/README.md`.

### figueira-branding

Orchestrates brand creation, audit, refresh, rebrand, and extension: strategy, positioning, research, verbal identity, visual identity, logo systems, applications, governance, and rollout.

Highlights:
- gated workflow from problem definition through research, positioning, naming, verbal identity, three genuinely distinct visual territories, critique, system documentation, and governance;
- explicit scope resolution (client / prospect / internal) so history, audience, and equity are never mixed across entities;
- truth and evidence rules — no fabricated market perception, research, or metrics;
- available in English (canonical) and a full Portuguese (Brazil) mirror under `pt-BR/`.

See `skills/figueira-branding/README.md`.

### figueira-web-design

Orchestrates design direction, UX/CRO, visual architecture, responsible component sourcing, implementation, and QA for any web experience: landing pages, institutional sites, e-commerce, and web apps.

Highlights:
- acts as an orchestration layer above auxiliary visual skills, preventing premature implementation;
- requires context-specific visual direction and avoids generic AI aesthetics;
- separates design decisions from technology adapters (WordPress/WooCommerce, Shopify, React/Next.js);
- available in English (canonical) and a full Portuguese (Brazil) mirror under `pt-BR/`.

See `skills/figueira-web-design/README.md`.

## Installation

See `docs/INSTALLATION.md` for generic installation patterns for Agent Skills-compatible environments, Codex, Claude Code and other local agent setups.

## Versioning

The repository follows semantic versioning at the skill level. Each skill maintains its own `CHANGELOG.md`, while repository-wide changes are recorded in the root `CHANGELOG.md`.

## Privacy and public scope

This repository is public-facing. Do not commit:
- internal Figueira manifestos;
- client data;
- credentials, tokens or secrets;
- private strategy documents;
- proprietary internal operating instructions unrelated to the portable technical skill.

## License

Unless a dedicated license file is added, treat the contents as source-available for evaluation and replication only. Before redistributing or commercializing, add an explicit repository license.
