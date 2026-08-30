# figueira-prompt-optimizer

A lightweight, destination-aware prompt compiler for coding, text, image and video workflows.

## Purpose
Convert rough instructions, dictated ideas, incomplete briefs or reference-driven requests into prompts optimized for the actual destination instead of producing one generic “better prompt”.

The router separates:
- **provider** — company/service family;
- **surface** — app or creation workflow;
- **model** — generation model when known;
- **modality** — text, coding, image, video or mixed;
- **operation** — create, edit, transform, continue, analyze or reconstruct;
- **asset mode** — text-only, image/video reference, frames, ingredients or multi-reference.

This makes combinations such as **Higgsfield + Seedance** possible without pretending the hosting surface and the generation model are the same thing.

## Key behavior
- Gemini image with unspecified surface → Gemini Image + Google Flow Image.
- Gemini video with unspecified surface → Gemini/Veo + Google Flow Video.
- I2V prompts focus on motion/camera/time instead of redundantly re-describing the source image.
- Editing distinguishes what changes from what must be preserved.
- Context is selected by necessity, not availability.
- Retired/unknown tools are not silently treated as active or feature-complete.

## Supported families in v0.2

Coding/text:
- Codex
- Claude Code
- Gemini / Gemini CLI
- generic LLM

Image/video:
- ChatGPT image generation
- Gemini Image / Veo
- Google Flow
- Runway
- Kling / O1
- Higgsfield
- Seedance 2.5
- Grok Imagine Image 2.0 / Video 1.5
- Midjourney
- FLUX.2
- Ideogram
- Luma Dream Machine
- generic fallback

See `references/targets/registry.md` for routing.

## Usage
```text
Use figueira-prompt-optimizer.
Target: Claude Code.
Instruction: [rough dictated request]
```

```text
Use figueira-prompt-optimizer.
Create a video prompt for Gemini showing...
```

```text
Use figueira-prompt-optimizer.
Target: Higgsfield, model Seedance 2.5.
References: @character, @location.
Instruction: ...
```

## Design principle
The skill is procedural, not institutional. It does not carry a company manifesto or private operating context. Persistent agent/project context belongs outside the skill.

## Public-safe scope
This skill intentionally excludes private strategic documents, client information, credentials and internal Figueira documentation.
