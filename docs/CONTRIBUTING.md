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

## Bilingual skills (pt-BR mirror)

A skill may ship a full Portuguese (Brazil) translation alongside its English-canonical content. When it does, follow this layout:

```text
skills/<skill-name>/
├── SKILL.md              # English, canonical
├── README.md
├── CHANGELOG.md           # English only, not mirrored
├── agents/openai.yaml      # English only, not mirrored
├── references/
├── assets/
├── evals/
└── pt-BR/
    ├── SKILL.md            # translated body, frontmatter (name/description) stays in English
    ├── README.md
    ├── references/         # same file tree as the English references/, fully translated
    └── evals/               # same file tree as the English evals/, fully translated
```

Rules for the `pt-BR/` mirror:
- English is canonical and always ships at the skill root; `pt-BR/` is a complete translation of it, not a subset.
- `CHANGELOG.md` and `agents/openai.yaml` are English-only and are never duplicated under `pt-BR/`.
- In both `SKILL.md` files, YAML frontmatter (`name`, `description`) stays in English — only the body is translated.
- Structured status markers used in the prose (e.g. `NO DATA`, `UNVERIFIED`, `HYPOTHESIS`, `EXECUTED`/`NOT EXECUTED`) are translated too, not left literal — keep them consistent with the equivalents already used in that skill's own `pt-BR/SKILL.md`.
- Proper nouns and technology names (React, Next.js, WordPress, WooCommerce, Shopify, shadcn/ui, etc.) stay in English in the pt-BR files.
- Keep the English and `pt-BR/` reference/evals file trees structurally identical — a translation is not complete until every English file has a `pt-BR/` counterpart.

## Versioning

Use semantic versioning:
- PATCH: wording fixes and minor target rule improvements;
- MINOR: new adapters, modalities or backward-compatible behaviors;
- MAJOR: breaking changes to invocation or output contracts.

Document changes in the skill-level `CHANGELOG.md`.
