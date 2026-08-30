# Adapter — React / Next.js

## Principle

Choose architecture by job and maintainability, not by trend.

## Implementation

- compose by domain and real reuse;
- preserve tokens in CSS variables/design system;
- use server/client boundaries deliberately;
- minimize client-side JavaScript;
- handle loading/error/empty states;
- preserve semantics and accessibility;
- avoid premature generic abstractions.

## Component libraries and registries

Libraries like shadcn/ui, 21st.dev, Magic UI, Aceternity UI, React Bits and similar are **raw material**, not art direction.

Before incorporating any external component, read `../component-sources.md` and validate:

- compatibility with the current version/stack;
- extra packages and dependencies;
- client component requirement;
- required CSS/global styles;
- Motion/canvas/WebGL when present;
- accessibility and reduced motion;
- bundle/performance impact;
- item/code license;
- adaptability to the design system.

### Suggested strategy

- **shadcn/ui** → primitives and functional components;
- **21st.dev** → discovery/comparison of alternatives;
- **Magic UI** → controlled marketing motion/effects;
- **Aceternity UI** → advanced visual effects under license validation;
- **React Bits** → creative microinteractions and animations.

Use the smallest sufficient combination. Don't collage multiple registries together.

Adapt tokens, composition and content to the project. Don't ship a library's default look.

## Performance

When applicable:
- image optimization;
- fonts;
- code splitting;
- caching;
- streaming;
- bundle size;
- Core Web Vitals;
- reduce client-side components used only for decoration;
- respect `prefers-reduced-motion` on meaningful motion.
