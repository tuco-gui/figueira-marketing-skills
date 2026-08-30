# Contributing

## Design principles

Every skill in this repository should be:

1. **Technical** — teach a reusable procedure or capability.
2. **Portable** — avoid assumptions about private Figueira infrastructure unless explicitly provided at runtime.
3. **Lean** — keep `SKILL.md` small; move detailed target knowledge into references loaded on demand.
4. **Context-efficient** — never duplicate persistent agent/project context without a concrete execution reason.
5. **Testable** — include representative eval cases for important routing or output behavior.
6. **Public-safe** — never expose internal manifestos, private strategy, client data, credentials or proprietary documents.

## Recommended skill structure

```text
skills/<skill-name>/
├── SKILL.md
├── README.md
├── CHANGELOG.md
├── references/
└── evals/
```

## Versioning

Use semantic versioning:
- PATCH: wording fixes and minor target rule improvements;
- MINOR: new adapters, modalities or backward-compatible behaviors;
- MAJOR: breaking changes to invocation or output contracts.

Document changes in the skill-level `CHANGELOG.md`.
