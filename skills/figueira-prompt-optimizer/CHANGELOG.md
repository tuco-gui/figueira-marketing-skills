# Changelog — figueira-prompt-optimizer

## [0.3.0] - 2026-08-30

### Added
- `design` modality for prototypes, mockups, decks and one-pagers.
- Claude Design surface adapter.
- Adobe Firefly surface adapter with surface+model composition.
- Eval coverage for Claude Design and Firefly reference/camera workflows.

### Changed
- Routing description now explicitly covers design surfaces in addition to text, coding, image and video.

## [0.2.1] - 2026-08-30

### Added
- Codex UI metadata through `agents/openai.yaml`.
- Concrete install instructions for Claude Code, Gemini CLI and interoperable `.agents/skills` setups.
- Repository install helper for symlink or copy installs.

### Changed
- Installation docs now distinguish direct local Agent Skills use from Codex plugin distribution.

## [0.2.0] - 2026-08-30

### Added
- Explicit provider + surface + model routing.
- Target capability registry.
- General text modality adapter.
- Surface+model composition, including Higgsfield + Seedance.
- Adapters for ChatGPT image generation, Grok Imagine, Seedance 2.5, Midjourney, FLUX.2, Ideogram and Luma Dream Machine.
- Lifecycle handling for deprecated/retired targets.
- Evaluation rubric and expanded eval suite.

### Changed
- Higgsfield is treated as a hosting surface rather than a synonym for Seedance.
- Freshness-sensitive visual targets must not be silently assumed active.
- Sora web/app is no longer listed as an active target.

## [0.1.0] - 2026-08-30

### Added
- Initial prompt compiler architecture.
- Context-minimization rules.
- Routing by provider, surface, modality, operation and asset mode.
- Gemini/Flow ambiguity behavior for image and video.
- Target adapters for Codex, Claude Code, Gemini, Flow, Runway, Kling and Higgsfield/Seedance.
- Image/video modality rules.
- Initial eval suite.
