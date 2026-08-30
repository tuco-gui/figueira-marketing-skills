---
name: figueira-prompt-optimizer
description: Compile rough instructions into concise, context-aware, destination-specific prompts for coding, text, image and video tools. Use when the user asks to improve, rewrite, structure or adapt a prompt for a named AI/tool, or when a visual prompt must be adapted to a generation surface such as Gemini, Google Flow, Runway, Kling or Higgsfield.
version: 0.1.0
---

# Figueira Prompt Optimizer

## Goal

Transform the user's raw intent into a prompt optimized for the actual destination. Do not merely expand wording.

## Core rules

1. Preserve the user's real objective, constraints and required output.
2. Remove repetition, dictation noise and irrelevant narrative.
3. Add context only when removing that context could materially change execution.
4. Never duplicate persistent project/agent context just because it exists.
5. Detect `provider`, `surface`, `modality`, `operation` and `asset_mode` before drafting.
6. Load only the reference files needed for the selected route.
7. Prefer concrete requirements and acceptance criteria over role-play or filler such as “you are an expert”.
8. Do not expose or inject private organizational context unless the user explicitly supplied it for the current task and it is required.
9. Return copy-paste-ready prompts.

## Routing

Determine:
- `modality`: text | coding | image | video | mixed
- `operation`: create | edit | transform | continue | analyze | reconstruct
- `provider`: openai | anthropic | google | runway | kling | higgsfield | other
- `surface`: codex | claude-code | gemini | gemini-cli | flow | model-specific | auto
- `asset_mode`: none | image-reference | video-reference | multi-reference | start-end-frames | ingredients

Then read:
- `references/core/context-selection.md`
- the relevant file in `references/modalities/`
- only the relevant file(s) in `references/targets/`

## Ambiguity policy

Do not ask a clarifying question when useful variants can be returned safely.

Special rule for Google:
- If the user requests an image for Gemini but does not specify Gemini direct vs Flow, return both **Gemini Image** and **Google Flow Image** versions.
- If the user requests a video for Gemini but does not specify Gemini/Veo direct vs Flow, return both **Gemini/Veo** and **Google Flow Video** versions.

For other providers, return multiple variants only when available surfaces materially require different prompt structures.

## Visual prompting

- Text-to-image: describe the visual result.
- Image-to-image/edit: separate changes from preserved attributes.
- Text-to-video: describe subject, action, scene, camera and temporal behavior as supported by the destination.
- Image-to-video: prioritize motion, camera behavior and temporal progression; avoid redundantly describing visual facts already defined by the source image unless they must be protected.
- Reference-to-prompt: reconstruct observable structure first, then compile for the requested destination.

## Output contract

Default output:
1. A short target/mode label.
2. The optimized prompt in a copy-paste-ready block.
3. Optional settings only when they materially affect the result.
4. Additional target variants only when ambiguity policy requires them.

Do not include long explanations unless the user asks why the prompt was structured that way.

## Quality check

Before returning, verify:
- objective is explicit;
- destination is correct;
- unnecessary context is absent;
- constraints are preserved;
- referenced assets have a defined role;
- image/video prompt follows the target's actual interaction mode;
- no contradictory instructions remain;
- output is directly usable.
