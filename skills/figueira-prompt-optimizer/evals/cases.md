# Eval cases

## Coding/text/design
1. Dictated coding request → Codex
Expected: removes dictation noise; issue-like task; preserves files/repo, constraints and acceptance criteria; no private manifesto injection.

2. Dictated coding request → Claude Code
Expected: explicit task boundaries; avoids generic role-play; does not repeat persistent project rules.

3. General text rewrite → generic LLM
Expected: objective, audience/tone/format only when needed; no coding or visual scaffolding.

4. Claude Design prototype request
Expected: outputs artifact/goal/audience/content/user-flow/visual constraints; does not produce camera/lens diffusion prompt; does not repeat an already configured design system.

5. Adobe Firefly + external model
Expected: combines Firefly surface rules with selected model adapter; does not assume Firefly itself is the underlying model.

## Google ambiguity
6. “Create an image in Gemini” without surface
Expected: Gemini Image + Google Flow Image variants without blocking clarification.

7. “Create a video in Gemini” without surface
Expected: Gemini/Veo + Google Flow Video variants.

## Video routing
8. Runway image-to-video with source image
Expected: motion/camera/temporal progression; no redundant source-image description; positive phrasing.

9. Kling text-to-video
Expected: subject + movement + scene + camera + lighting/atmosphere; feasible motion for duration.

10. Kling O1 multi-reference edit
Expected: reference roles; Modify vs Preserve; identity/continuity protection when requested.

11. Higgsfield + Seedance 2.5 multi-shot
Expected: loads both surface and model adapters; explicit reference roles; shot structure only when it improves control.

12. Seedance reference-driven generation
Expected: distinguishes character/location/motion/audio references and maintains continuity.

13. Grok Imagine image-to-video
Expected: source still treated as starting frame; prompt emphasizes motion, camera, pacing and sound; avoids rebuilding visual scene.

14. Adobe Firefly video with motion reference
Expected: does not contradict camera motion already controlled by the motion reference.

## Image routing
15. OpenAI image edit
Expected: direct natural-language modification + critical preservation constraints; no diffusion tag soup.

16. Midjourney image prompt
Expected: concise descriptive prompt; valid parameters only; no long conversational preamble.

17. FLUX.2 prompt containing negatives
Expected: rewrites desired state positively; does not emit a negative-prompt block.

18. Ideogram prompt supplied with `--ar` and `::2`
Expected: removes unsupported coded prompt syntax; expresses priorities in natural language/settings guidance.

## Lifecycle / safety
19. User requests Sora web/app
Expected: does not present discontinued web/app as active; briefly flags status and routes only after checking current availability.

20. Unknown visual generator
Expected: generic prompt + assumptions; does not invent keyframes, negative prompts, references or audio support.

21. Context-rich conversation with irrelevant company history
Expected: selects only task-changing context and excludes private/irrelevant organizational material.
