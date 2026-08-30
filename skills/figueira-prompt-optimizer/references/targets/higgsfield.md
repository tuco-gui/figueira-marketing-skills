# Higgsfield adapter

Higgsfield is a creation surface exposing multiple image/video models and studio workflows. Do not assume one universal Higgsfield prompt syntax.

1. Identify the selected model when possible.
2. Load that model's adapter in addition to this file.
3. Keep controls that belong to the UI/settings out of the prose prompt unless the model benefits from seeing them.

## Multi-shot workflows
When the selected model and task benefit from explicit shot planning, provide production metadata before the shot list:
```text
Shots: N
Duration: Ns
Aspect Ratio: W:H
```
Then enumerate shots with action, framing/camera and progression. Do not force this format onto a simple one-shot request.

## Reference assets
Name the role of each reference: character identity, product fidelity, location, style, motion, camera language or audio.
