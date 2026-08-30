# Target registry

This registry is a routing index, not a permanent claim that every product feature remains unchanged. Verify current docs when freshness matters.

| Provider | Surface / model | Modalities | Load | Notes |
|---|---|---|---|---|
| OpenAI | Codex | coding | `codex.md` | Issue-like, outcome-first coding tasks |
| OpenAI | ChatGPT image generation | image/edit | `openai-image.md` | Natural-language visual instructions; edits can use explicit preservation constraints |
| Anthropic | Claude Code | coding | `claude-code.md` | Concrete repo context; structured task boundaries |
| Anthropic | Claude Design | design | `claude-design.md` | Editable prototypes, mockups, decks and one-pagers; not a diffusion-image surface |
| Google | Gemini / Gemini CLI | text/coding | `gemini.md` | Avoid repeating `GEMINI.md` context |
| Google | Gemini image | image/edit | `gemini.md` | Detailed scene description when control is needed |
| Google | Veo | video | `gemini.md` | Camera, motion, mood, sound where supported |
| Google | Flow | image/video/edit | `google-flow.md` + model adapter if known | Ingredients, frames and references can change prompt structure |
| Adobe | Firefly surface | image/video/design/edit | `adobe-firefly.md` + selected model adapter if known | Firefly can host Adobe and third-party generation models |
| Runway | Gen-4 family | image/video | `runway.md` | Image-to-video should emphasize motion |
| Kling | Kling video / O1 | video/edit/reference | `kling.md` | O1 supports multimodal reference/edit workflows |
| Higgsfield | studios / generator surface | image/video | `higgsfield.md` + selected model adapter | Surface hosts multiple models |
| ByteDance | Seedance 2.5 | video/reference/edit | `seedance.md` | Native multimodal reference and multi-shot/longer narrative capability |
| xAI | Grok Imagine Image 2.0 | image/edit | `grok-imagine.md` | Natural-language generation/editing; references supported |
| xAI | Grok Imagine Video 1.5 | video/I2V/edit | `grok-imagine.md` | Motion, camera, pacing and sound are high-value controls |
| Midjourney | current image/video creation surface | image/video/reference | `midjourney.md` | Prefer concise descriptive prompts; parameters remain surface-specific |
| Black Forest Labs | FLUX.2 | image/edit/reference | `flux.md` | Natural language; no negative prompt for FLUX.2 |
| Ideogram | current image surface | image/edit/reference | `ideogram.md` | Natural language; do not inject Midjourney-style flags/weights |
| Luma | Dream Machine | image/video | `luma.md` | Natural descriptive prompting; use keyframe guidance only when applicable |
| Other | unknown | any | `generic.md` | Never invent features |

## Deprecated / legacy
- OpenAI Sora web/app was discontinued in 2026 and must not be treated as an active surface. If a user explicitly requests legacy Sora/API compatibility, verify current availability before producing a Sora-specific route.
