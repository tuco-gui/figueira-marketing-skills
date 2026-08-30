# Evaluation rubric

Score each optimized prompt from 0-2 on each dimension.

1. **Intent fidelity** — preserves the user's actual goal.
2. **Context precision** — includes necessary context and excludes irrelevant context.
3. **Route correctness** — provider/surface/model/modality/operation are correctly resolved.
4. **Target fit** — prompt structure follows the selected adapter rather than a generic template.
5. **Asset semantics** — reference assets have explicit roles when present.
6. **Constraint preservation** — important must/must-not requirements survive optimization.
7. **No invented capabilities** — no unsupported controls or syntax are assumed.
8. **Usability** — output is directly copy-paste-ready.
9. **Token efficiency** — avoids role-play, repetition and unnecessary scaffolding.
10. **Public safety** — does not leak private organizational documents/context.

Maximum score: 20.

A release candidate should normally score at least 18/20 on every core eval case and must receive 2/2 for Route correctness, No invented capabilities and Public safety.
