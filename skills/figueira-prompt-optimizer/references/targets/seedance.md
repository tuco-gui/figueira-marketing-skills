# Seedance adapter

Seedance is a model family and can be accessed through different surfaces. Combine this adapter with the hosting surface adapter when known.

## Seedance 2.5 / current multimodal video workflows
The model supports reference-driven generation using combinations of text, image, audio and video. Define each reference by role rather than saying only "use these references".

For narrative or multi-shot requests, organize temporal progression explicitly. Use shot-by-shot structure when it improves control, not automatically for every clip.

Suggested structure when useful:
```text
Duration: ...
Aspect ratio: ...
References:
- @asset: identity/style/motion/audio/composition role

Shot 1: framing + action + camera
Shot 2: framing + action + transition
...

Continuity: ...
Audio/dialogue: ...
```

For edits or extensions, describe the change/continuation and protect identity, scene continuity, motion direction or audio characteristics only when required.
