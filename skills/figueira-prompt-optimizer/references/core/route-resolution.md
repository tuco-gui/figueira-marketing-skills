# Route resolution

Treat provider, surface and model as separate dimensions.

## Resolution order
1. Identify modality and operation.
2. Detect any explicit provider, app/surface and model.
3. Detect input assets and their intended roles.
4. Consult `../targets/registry.md`.
5. Apply the modality rules.
6. Apply the surface adapter when the UI/workflow changes how prompts are written.
7. Apply the model adapter when model-specific behavior materially changes prompt structure.

## Surface vs model
A model can appear in multiple products. Do not encode a model's rules only inside one hosting platform.

Example:
- surface: Higgsfield
- model: Seedance 2.5

Load both `higgsfield.md` and `seedance.md`.

## Unknown target
If the target is unknown or undocumented, use `generic.md`. Never invent support for negative prompts, keyframes, reference images, audio, duration, aspect ratio or other controls.

## Deprecated target
If a requested target is discontinued or scheduled for imminent shutdown:
- state that briefly;
- do not present it as a recommended active route;
- offer the nearest active route only when one is known;
- preserve a legacy-format prompt only if the user explicitly needs compatibility with that legacy target.
