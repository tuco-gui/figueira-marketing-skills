# figueira-prompt-optimizer

A lightweight, destination-aware prompt compiler for coding, text, image and video workflows.

## Purpose

Convert rough instructions, dictated ideas, incomplete briefs or reference-driven requests into prompts optimized for the destination tool instead of producing one generic “better prompt”.

The skill separates:
- **provider**: Google, OpenAI, Anthropic, Runway, Kling, Higgsfield, etc.;
- **surface**: Gemini, Google Flow, Codex, Claude Code, specific visual modes;
- **modality**: text, coding, image, video;
- **operation**: create, edit, transform, continue, analyze or reconstruct;
- **asset mode**: text-only, image reference, video reference, start/end frames, ingredients or multi-reference.

## Key behavior

- Gemini + image with no surface specified → return Gemini Image and Google Flow Image variants.
- Gemini + video with no surface specified → return Gemini/Veo and Google Flow Video variants.
- Image-to-video adapters avoid redundantly re-describing composition already present in the input image unless necessary.
- Editing prompts distinguish **what must change** from **what must remain preserved**.
- Context is included only when removing it could materially change execution.

## Supported target families in v0.1

Coding/text:
- Codex
- Claude Code
- Gemini / Gemini CLI
- Generic LLM

Visual:
- Gemini Image
- Gemini/Veo Video
- Google Flow Image
- Google Flow Video
- Runway Image
- Runway Video / Image-to-Video
- Kling Text-to-Video
- Kling O1 multimodal/edit workflows
- Higgsfield / Seedance
- Generic image generator
- Generic video generator

## Usage

```text
Use figueira-prompt-optimizer.
Target: Claude Code.
Instruction: [rough dictated request]
```

```text
Use figueira-prompt-optimizer.
I want to generate a video in Gemini showing...
```

If a relevant target surface is ambiguous, the skill returns useful variants rather than silently guessing.

## Public-safe scope

This skill contains only reusable technical procedures. It intentionally excludes Figueira Marketing's internal manifesto, private strategic documents, client information and credentials.
