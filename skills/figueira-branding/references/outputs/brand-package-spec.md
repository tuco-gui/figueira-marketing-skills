# Output: Brand package specification (Gate 12)

## Objective
Define what is actually delivered at the end of the process and how it stays versioned/documented — the handoff itself.

## Final package structure
```
<brand-slug>/
├── 00-strategy/
│   ├── positioning.md            (Gate 3 output)
│   └── research-evidence.md      (Gate 2 output, with evidence classification)
├── 01-verbal-identity/
│   └── voice-guide.md            (Gate 5 output)
├── 02-visual-identity/
│   ├── territories-evaluated.md  (Gates 6-7 output, incl. discarded ones and why)
│   ├── logo/                     (source files of the logo system, Gate 8)
│   └── palette-typography.md
├── 03-applications/
│   └── ...                       (pieces validated in Gate 9)
├── 04-guidelines/
│   └── brand-guidelines.md       (consolidated output of brand-guidelines.md)
├── 05-governance/
│   └── rollout-plan.md           (output of rollout-governance.md)
└── 06-qa/
    └── final-scorecard.md        (Gate 11 output)
```

## Mandatory package metadata
- Mode used (`new-brand`/`rebrand`/`brand-refresh`/`brand-audit`/`identity-extension`).
- Depth used (`LEAN`/`STANDARD`/`DEEP`).
- Scope (`INSTITUTIONAL`/`CLIENT`/`PROSPECT` + slug).
- Date and person responsible for final approval.
- Package version (to allow future revisions without losing history).

## Versioning rule
The brand package must be versionable — future changes (even small ones, like a palette tweak) generate a new documented version, not a silent overwrite of what was approved. This preserves decision history and avoids losing the rationale for why something was the way it was.

## Output
A complete, versioned package with a traceable rationale for every decision from Gate 0 to Gate 11 — ready for operational use by the team and, when applicable, by external vendors.
