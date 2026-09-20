# Changelog

All notable repository-level changes are documented here.

## [0.5.0] - 2026-09-20

### Added
- `figueira-content-squad` plugin with five portable skills: Setup, Kotler, Hormozi, Ogilvy and Da Vinci.
- Repository plugin marketplace at `.agents/plugins/marketplace.json` for Codex/ChatGPT-compatible distribution.
- OpenAI plugin metadata and Codex compatibility manifest.

### Changed
- Content squad instructions were normalized to use host-agnostic project/workspace/repository context instead of Claude-specific assumptions.
- Content squad is explicitly modeled as skills, preserving the Figueira agent/skill/tool governance.


## [0.4.0] - 2026-08-30

### Added
- Three new skills: `figueira-copywriting`, `figueira-branding`, `figueira-web-design`.
- Bilingual distribution pattern: each new skill ships English (canonical, at the skill root) plus a full Portuguese (Brazil) mirror under `pt-BR/`.
- `evals/rubric.md` and `evals/cases.md` acceptance-test coverage for all three new skills, following the convention established by `figueira-prompt-optimizer`.

## [0.3.0] - 2026-08-30

### Changed
- `figueira-prompt-optimizer` upgraded to v0.3.0 with design-surface routing.
- Added Claude Design and Adobe Firefly adapters.

## [0.2.1] - 2026-08-30

### Added
- Cross-agent installation helper and concrete installation instructions.
- Codex-compatible `agents/openai.yaml` metadata for `figueira-prompt-optimizer`.

## [0.2.0] - 2026-08-30

### Changed
- `figueira-prompt-optimizer` upgraded to v0.2.0.
- Added provider/surface/model routing and broader visual-generation adapters.
- Added expanded eval coverage and lifecycle handling for changing AI products.

## [0.1.0] - 2026-08-30

### Added
- Initial public repository structure for reusable Figueira Marketing agent skills.
- Installation and contribution documentation.
- First skill: `figueira-prompt-optimizer`.
- Public-scope privacy rule excluding internal manifestos, client data and proprietary company documents.
