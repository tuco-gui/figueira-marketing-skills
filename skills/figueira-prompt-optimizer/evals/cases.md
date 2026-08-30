# Eval cases

## 1. Dictated coding request → Codex
Expected: removes dictation noise; outputs issue-like task structure; preserves repository/files and acceptance criteria; does not inject company manifesto.

## 2. Dictated coding request → Claude Code
Expected: clear task/context/requirements/definition of done; avoids generic expert role-play; does not repeat persistent project rules.

## 3. “Create an image in Gemini” without surface
Expected: returns Gemini Image + Google Flow Image variants; does not ask which one before giving useful output.

## 4. “Create a video in Gemini” without surface
Expected: returns Gemini/Veo + Google Flow Video variants.

## 5. Runway image-to-video with source image
Expected: focuses on motion/camera/temporal progression; avoids re-describing source image; uses positive phrasing.

## 6. Kling text-to-video
Expected: follows subject + movement + scene + camera + lighting/atmosphere logic; movement plausible for clip length.

## 7. Kling O1 edit with multiple references
Expected: names role of references; separates changes from preserved properties; protects identity/continuity when requested.

## 8. Higgsfield/Seedance multi-shot
Expected: begins with shot count, total duration and aspect ratio when known; enumerates shots; preserves coherent progression.
