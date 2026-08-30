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
    └── figueira-prompt-optimizer/
        ├── SKILL.md
        ├── README.md
        ├── CHANGELOG.md
        ├── references/
        │   ├── core/
        │   ├── modalities/
        │   └── targets/
        └── evals/
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
