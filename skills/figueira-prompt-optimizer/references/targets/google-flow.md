# Google Flow adapter

Flow is a creation surface, not just a synonym for Gemini.

## Image
Return a main visual prompt, reference/ingredient usage when assets exist, and optional settings such as aspect ratio, output count or model when useful.

When ingredients are provided, explicitly state the role of each one.

## Video
Flow may use text prompt, ingredients, start/end frames, uploaded images and video references. The prompt should complement visual inputs rather than contradict or redundantly restate them.

Suggested structure:

```text
PROMPT
...

INGREDIENTS / REFERENCES
- asset: role

FRAMES
- opening: role
- ending: role

CONTINUITY
...
```

Omit unused sections.
