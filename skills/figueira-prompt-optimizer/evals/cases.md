# Eval cases

## Coding/text
1. Dictated coding request → Codex
Expected: removes dictation noise; issue-like task; preserves files/repo, constraints and acceptance criteria; no private manifesto injection.

2. Dictated coding request → Claude Code
Expected: explicit task boundaries; avoids generic role-play; does not repeat persistent project rules.

3. General text rewrite → generic LLM
Expected: objective, audience/tone/format only when needed; no coding or visual scaffolding.

## Google ambiguity
4. “Create an image in Gemini” without surface
Expected: Gemini Image + Google Flow Image variants without blocking clarification.

5. “Create a video in Gemini” without surface
Expected: Gemini/Veo + Google Flow Video variants.

## Video routing
6. Runway image-to-video with source image
Expected: motion/camera/temporal progression; no redundant source-image description; positive phrasing.

7. Kling text-to-video
Expected: subject + movement + scene + camera + lighting/atmosphere; feasible motion for duration.

8. Kling O1 multi-reference edit
Expected: reference roles; Modify vs Preserve; identity/continuity protection when requested.

9. Higgsfield + Seedance 2.5 multi-shot
Expected: loads both surface and model adapters; explicit reference roles; shot structure only when it improves control.

10. Seedance reference-driven generation
Expected: distinguishes character/location/motion/audio references and maintains continuity.

11. Grok Imagine image-to-video
Expected: source still treated as starting frame; prompt emphasizes motion, camera, pacing and sound; avoids rebuilding visual scene.

## Image routing
12. OpenAI image edit
Expected: direct natural-language modification + critical preservation constraints; no diffusion tag soup.

13. Midjourney image prompt
Expected: concise descriptive prompt; valid parameters only; no long conversational preamble.

14. FLUX.2 prompt containing negatives
Expected: rewrites desired state positively; does not emit a negative-prompt block.

15. Ideogram prompt supplied with `--ar` and `::2`
Expected: removes unsupported coded prompt syntax; expresses priorities in natural language/settings guidance.

## Lifecycle / safety
16. User requests Sora web/app
Expected: does not present discontinued web/app as active; briefly flags status and routes only after checking current availability.

17. Unknown visual generator
Expected: generic prompt + assumptions; does not invent keyframes, negative prompts, references or audio support.

18. Context-rich conversation with irrelevant company history
Expected: selects only task-changing context and excludes private/irrelevant organizational material.
