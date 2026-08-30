# figueira-copywriting — v0.1.0

A high-conversion, high-retention copywriting orchestrator.

## Purpose

Turn context, strategy, VOC (voice of customer), offer and evidence into communication that is:

- clear;
- magnetic;
- persuasive;
- truthful;
- brand-coherent;
- matched to the audience's awareness stage;
- measurable.

## Modes

- landing-page
- sales-page
- ecommerce
- ad-copy
- email
- social
- short-video
- vsl
- advertorial
- whatsapp
- copy-audit

## Architecture

- `SKILL.md` — orchestration: context, strategy, magnetic, persuasion, truth, QA and test gates
- `references/modes/` — channel playbooks
- `references/strategy/` — VOC, offer, awareness, sophistication, Big Idea, mechanism, funnel
- `references/magnetic/` — hooks, curiosity, storytelling, rhythm
- `references/persuasion/` — proof, objections, authority, risk, urgency/scarcity
- `references/qa/` — Truth Gate, persuasion, magnetism, anti-slop, compliance, CRO
- `references/testing/` — variants and learning
- `references/outputs/` — deliverable spec
- `evals/` — evaluation rubric and test cases

A full Brazilian Portuguese translation lives in `pt-BR/`, mirroring this structure.

## Usage

```text
Use figueira-copywriting.
Mode: landing-page.
Context: [brief, audience, offer, available proof]
```

```text
Use figueira-copywriting.
Mode: copy-audit.
Paste the existing page/ad for audit.
```

## Non-negotiable principles

- Strategy before text: without a defined audience, offer and awareness level, it does not draft final copy.
- Does not invent proof, case studies, testimonials, metrics, or false urgency/scarcity (`Truth Gate`).
- Legitimate persuasion, not manipulation: the line is falsehood, material distortion, or deliberate exploitation of vulnerability.
- Every commercial piece goes through conversion QA (Persuasion Audit, Magnetic Pull, anti-AI-slop, compliance, CRO/Copy Chief, scorecard) before being considered done.
- Produces drafts and variants freely, but requires explicit human approval before publishing, sending, activating a campaign, or changing offer/price in production.

## Design principle

The skill is procedural: gates, channel playbooks and reusable QA checklists. It does not carry a company manifesto, private operational context, client data, or restrictively licensed third-party material.

## Public-safe scope

This repository deliberately excludes private strategic documents, client data, credentials and internal institutional documentation.
