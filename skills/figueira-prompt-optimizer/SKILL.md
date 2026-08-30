---
name: figueira-prompt-optimizer
description: Compile rough instructions into concise, context-aware, destination-specific prompts for coding, text, image and video tools. Use when the user asks to improve, rewrite, structure or adapt a prompt for a named AI/tool, or when a visual prompt must be adapted to a generation surface or model such as Gemini, Google Flow, Runway, Kling, Higgsfield, Seedance, Grok Imagine, Midjourney, FLUX, Ideogram or Luma.
version: 0.2.0
---

# Figueira Prompt Optimizer

## Goal
Transform the user's raw intent into a prompt optimized for the actual destination. Do not merely expand wording.

## Core rules
1. Preserve the real objective, constraints and required output.
2. Remove repetition, dictation noise and irrelevant narrative.
3. Add context only when removing it could materially change execution.
4. Never duplicate persistent project/agent context just because it exists.
5. Resolve `provider`, `surface`, `model`, `modality`, `operation` and `asset_mode` before drafting.
6. Load only the references required for the selected route.
7. Prefer concrete requirements and acceptance criteria over role-play or filler.
8. Do not expose private organizational context unless the user supplied it for the current task and it is required.
9. Return copy-paste-ready prompts.
10. Do not assume a retired product or unsupported feature is still active.

## Routing
Determine:
- `modality`: text | coding | image | video | mixed
- `operation`: create | edit | transform | continue | analyze | reconstruct
- `provider`: company/service family
- `surface`: app/interface/workflow where the prompt will be used
- `model`: generation model when known
- `asset_mode`: none | image-reference | video-reference | multi-reference | start-end-frames | ingredients | mixed-reference

Read in this order:
1. `references/core/context-selection.md`
2. `references/core/route-resolution.md`
3. the relevant file in `references/modalities/`
4. `references/targets/registry.md`
5. only the relevant target/model adapter(s)

When both a surface adapter and a model adapter apply, combine them. Example: Higgsfield surface + Seedance model.

## Ambiguity policy
Do not ask a clarifying question when useful variants can be returned safely.

Special Google rule:
- Gemini + image without surface → return **Gemini Image** and **Google Flow Image**.
- Gemini + video without surface → return **Gemini/Veo** and **Google Flow Video**.

Return multiple variants for other providers only when the surface/model changes the prompt structure materially.

## Freshness policy
Visual products change quickly. If the environment has current documentation/web access and the requested model, surface or feature is uncertain, verify it before selecting an adapter. Do not silently route to a discontinued surface.

## Visual prompting
- Text-to-image: describe the intended visual result.
- Image edit: separate `Modify` from `Preserve` when fidelity matters.
- Text-to-video: describe subject/action, scene, camera and temporal behavior according to the destination.
- Image-to-video: prioritize motion, camera behavior, pacing and temporal progression; do not redundantly restate the source image.
- Video edit: specify modifications and preservation constraints.
- Reference-to-prompt: reconstruct observable structure first, then compile for the requested destination.

## Output contract
Default:
1. short target/mode label;
2. optimized prompt in a copy-paste-ready block;
3. optional settings only when they materially affect the result;
4. additional variants only when routing requires them.

Do not include long explanations unless requested.

## Quality check
Verify:
- objective is explicit;
- destination and active surface are correct;
- unnecessary context is absent;
- constraints are preserved;
- referenced assets have defined roles;
- visual prompt matches the operation (T2I/I2I/T2V/I2V/edit/reference);
- unsupported syntax or controls are not invented;
- no contradictory instructions remain;
- output is directly usable.
