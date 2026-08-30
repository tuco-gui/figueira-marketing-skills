# QA — Anti AI Slop

## Rule

No pattern below is banned by itself. The problem is automatic, repetitive use that has no relationship to content, brand or job.

## Visual red flags

Question when you see:
- a centered hero with headline + subhead + two CTAs + floating mockup, applied as a formula;
- a purple/blue gradient by reflex;
- decorative glassmorphism;
- a card inside a card;
- `rounded-xl` on almost everything;
- a three-card section repeated several times;
- excessive pills/badges;
- a generic icon above every heading;
- blobs, orbs and abstract grids with no function;
- heavy shadows used to fake depth;
- excess borders compensating for weak hierarchy;
- mechanical alternation of text-left/image-right;
- a bento grid with no relationship to the information;
- invented numbers/stats used to fill space;
- an invented dashboard mockup for a company that doesn't sell software;
- vague slogans as the main content;
- every block with the same spacing and weight;
- a perfectly symmetrical layout with no reason;
- animation applied to everything;
- sticky elements that cover content on mobile;
- typography chosen only because it's popular on AI-generated sites;
- a page that looks like a collage of shadcn/21st/Magic UI/Aceternity/React Bits components;
- five different motion effects just because they were available in the registry;
- a visually impressive component that hurts the primary job;
- a component library's default look presented as the client's own identity.

## Content red flags

- lorem ipsum in the final deliverable;
- a fictional testimonial;
- client logos without validation;
- "+10,000 clients" with no source;
- fake reviews;
- "last units left" with no real stock;
- a fake countdown;
- invented security/certification badges;
- generic FAQs not tied to real objections.

## Specificity test

Remove the logo, name and colors.

If the layout could still belong to dozens of companies in different industries, it lacks specific direction.

Ask:
- did the subject influence the composition?
- did the brand influence typography/imagery/rhythm?
- did the content influence the structure?
- is there at least one memorable decision that isn't a gratuitous effect?

## Brand exception

Don't reject Inter, Montserrat, or any font just because it's common when it's part of the current design system. The problem is using a default without context.

## Anti-component-collage test

When using external components, ask:

- do they all look like they belong to the same design system?
- have radius, border, shadow, type, color and spacing been normalized?
- is there a single motion language?
- does every effect have a function?
- would the interface still make sense if we removed the animations?
- is the sum of dependencies proportional to the benefit?

If the answer is no, reduce components/effects and rebuild coherence before final QA.
