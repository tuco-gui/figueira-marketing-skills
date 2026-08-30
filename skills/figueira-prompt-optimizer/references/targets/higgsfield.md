# Higgsfield adapter

Higgsfield exposes multiple visual models and studio workflows. Adapt to the selected model when known.

## Seedance-style video
For structured multi-shot prompts, place production settings up front:

```text
Shots: N
Duration: Ns
Aspect Ratio: W:H
```

Then describe each shot separately with explicit action and progression. Do not force multi-shot structure for a simple single-shot request.
