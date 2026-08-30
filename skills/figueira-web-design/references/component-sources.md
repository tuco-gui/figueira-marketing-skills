# Component Sources and Visual Repertoire

## Purpose

This file guides when and how to consult external libraries/registries during a project governed by `figueira-web-design`.

These sources are **raw material**. None of them replace:

1. scope context;
2. the current Brand Board/design system;
3. the design thesis;
4. content/UX architecture;
5. critique;
6. visual QA.

Never assemble a page as a collage of components pulled from different registries.

## Component adoption gate

Before incorporating external code, answer:

1. **JOB** — does the component solve a real problem, or does it just look interesting?
2. **COHERENCE** — does it fit the project's thesis and design system?
3. **STACK** — is it compatible with the current technology without creating a parallel architecture?
4. **DEPENDENCIES** — what packages, runtime, CSS, Motion/canvas/WebGL or configuration does it add?
5. **PERFORMANCE** — does the visual gain justify the JS, rendering and asset cost?
6. **ACCESSIBILITY** — do keyboard, focus, reduced motion, semantics and contrast remain adequate?
7. **LICENSE** — do the terms allow the intended use on this project/client?
8. **MAINTENANCE** — will the code stay understandable and editable once integrated?

If any material answer is unknown, mark it `UNVERIFIED` and do not treat the component as approved for production.

## 1. 21st.dev

### Role

Use mainly as a **discovery and reference catalog** for React/Tailwind interfaces: components, blocks, themes and composition patterns made by many authors.

### Good for

- comparing multiple solutions to the same problem;
- researching heroes, navigation, galleries, pricing, cards, tables, forms and states;
- finding microinteraction and composition references;
- speeding up implementation when the component genuinely fits the thesis.

### Guardrails

- author diversity means quality and aesthetic diversity;
- don't assume every marketplace item shares the same license;
- verify the license/origin of the chosen item before incorporating code;
- adapt tokens, spacing, typography and motion to the client's design system;
- avoid using the component's prompt/code as a substitute for art direction.

### License note

The public historical repository `serafimcloud/21st` is MIT. This **does not authorize assuming** that every component published on the 21st.dev catalog is MIT; third-party items must be verified individually.

## 2. shadcn/ui

### Role

Use as an **editable component/primitive foundation**, especially in React/Next.js + Tailwind.

### Good for

- forms;
- dialogs/sheets/popovers;
- menus;
- tables;
- inputs;
- tabs;
- accessible application components;
- a base for a proprietary design system.

### Guardrails

- shadcn/ui is not a ready-made visual direction;
- never ship the default look as the client's identity;
- customize tokens, typography, geometry, states and composition;
- prefer stable primitives over decorative effects for operational interfaces;
- respect the project's existing architecture instead of reinstalling a competing base.

### License

MIT on the official project.

## 3. Magic UI

### Role

Use as a source of **expressive components, motion and high-impact effects**, mainly for landing pages, product websites and highlight moments.

### Good for

- hero anchors;
- text motion;
- marquees;
- visual grids;
- highlight effects;
- marketing microinteractions.

### Guardrails

- use at most the effects needed to support hierarchy and narrative;
- don't turn the page into an animation showcase;
- review `prefers-reduced-motion` when applicable;
- evaluate Motion dependencies and bundle impact;
- in e-commerce, effects can never compete with discovery, product, price or CTA.

### License

MIT on the official `magicuidesign/magicui` repository.

## 4. Aceternity UI

### Role

Use as a source of **advanced visual patterns and interactive components** for React/Next.js/Tailwind/Motion.

### Good for

- backgrounds and hero effects;
- timelines;
- parallax;
- hover effects;
- 3D/visual elements;
- special marketing sections.

### Guardrails

- the catalog has both free and premium content;
- don't classify the whole library as MIT/open-source by default;
- verify the specific terms in effect before reusing code;
- don't redistribute a component/template against its license;
- use as a visual reference when the code's license isn't confirmed;
- avoid heavy effects when performance or legibility is a priority.

### License

Aceternity has its own terms for catalog items. License verification is mandatory before incorporating the code.

## 5. React Bits

### Role

Use as a repertoire of **animations, microinteractions, text, backgrounds and creative elements** for React projects.

### Good for

- text animations;
- hover/mouse interactions;
- backgrounds;
- motion that supports the narrative;
- memorable moments in landing pages and institutional sites;
- interaction prototypes.

### Guardrails

- don't use an animation just because it's available;
- preserve legibility and reduced motion;
- prefer one or two consistent motion signatures instead of many different effects;
- adapt the component to the visual system, not the other way around;
- verify the current license before redistributing or packaging components as a product/template.

### License

The official repository currently states `MIT + Commons Clause`; treat this as different from plain MIT and validate the intended use.

## Selection strategy

| Need | Priority source | Role |
|---|---|---|
| functional/app-base components | shadcn/ui | foundation/primitives |
| broad repertoire of modern components | 21st.dev | discovery/comparison |
| landing page with controlled motion | Magic UI | visual expression |
| specific advanced visual effect | Aceternity UI | reference/licensed component |
| creative microinteraction/animation | React Bits | motion signature |

Don't use five sources just because five are available. Use the **smallest sufficient combination**.

## Rule for non-React stacks

If the project is WordPress, WooCommerce, Shopify Liquid, HTML/CSS or another non-React stack:

- these libraries can serve as a **behavior and composition reference**;
- don't introduce React/Next/Tailwind just to reproduce an effect;
- implement the underlying principle natively in the existing stack when it makes sense;
- if reproducing it requires disproportionate architecture, drop the effect.

## Installation rule

Researching and evaluating a library is allowed.

Installing a package, CLI, plugin, MCP, theme or dependency in the environment/project requires the approval called for by the project/organization's governance process.
