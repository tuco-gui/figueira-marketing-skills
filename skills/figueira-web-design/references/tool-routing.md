# Auxiliary Skill and Tool Routing

## Principle

`figueira-web-design` is the web design orchestration layer. Auxiliary skills, registries and libraries can broaden the repertoire or execute specific tasks; they do not replace the brief, the current identity, the design thesis, critique or QA.

## Compatible auxiliary skills

When installed/available in the environment, consider:

### Direction and craft
- `design-taste-frontend`
- `frontend-design`
- `high-end-visual-design`
- `minimalist-ui`
- `industrial-brutalist-ui`
- `stitch-design-taste`
- `gpt-taste`

### Redesign/reference
- `redesign-existing-projects`
- `image-to-code`

### Brand and media
- `brandkit`
- `imagegen-frontend-web`
- `imagegen-frontend-mobile`

None of these is a required dependency of this skill. Check what's actually installed/authorized in your environment before assuming availability.

## Component and repertoire sources

When the problem calls for a component, interaction or visual reference, read `component-sources.md`.

### shadcn/ui
Prioritize as a functional base/primitives in React/Next.js when compatible. Don't use the default look as identity.

### 21st.dev
Prioritize for discovering alternatives and a broad repertoire. Verify the specific item before incorporating code, especially license and dependencies.

### Magic UI
Use for motion and impact moments in marketing when coherent with the thesis. Avoid excess ornamental animation.

### Aceternity UI
Use for advanced visual references and components. Verify the item's terms/license before reusing code.

### React Bits
Use for creative microinteractions/animations in React. Preserve legibility, reduced motion and motion consistency.

## Installation rule

Researching and recommending is different from installing.

Do not automatically install a plugin, package, CLI, skill, MCP, theme or dependency. Installation requires explicit approval from the person responsible for the project.

## Selection rule

Choose the tool **after** the thesis:

- generally refined visual → craft skill;
- very minimalist identity → `minimalist-ui`, if compatible;
- brutalist direction → `industrial-brutalist-ui`, if compatible;
- reconstruction from a reference → `image-to-code` as support, never as blind copying;
- redesign of an existing project → `redesign-existing-projects`;
- functional React app components → shadcn/ui as a possible base;
- React UI repertoire/comparison → 21st.dev;
- marketing motion → Magic UI / React Bits / Aceternity, choosing the smallest sufficient combination;
- WooCommerce implementation → adapter + WordPress/WooCommerce specialist;
- React/Next → adapter + full-stack developer.

Never pick an aesthetic just because a skill or library with that name exists.

## Anti-Frankenstein rule

Don't mix multiple registries to fill each section with a different aesthetic.

If more than one source is used:

1. normalize tokens;
2. normalize typography;
3. normalize radius/borders/shadows;
4. normalize motion;
5. eliminate redundant dependencies;
6. do browser QA on the whole, not just on each isolated component.
