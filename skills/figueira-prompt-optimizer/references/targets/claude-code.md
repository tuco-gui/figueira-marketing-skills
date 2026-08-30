# Claude Code adapter

Use explicit task boundaries and concrete repository references.

Recommended structure:

```text
<task>...</task>
<context>...</context>
<requirements>...</requirements>
<constraints>...</constraints>
<definition_of_done>...</definition_of_done>
```

Use XML-style sections only when they materially improve separation. Do not repeat persistent rules already present in `CLAUDE.md` unless necessary for the current task.
