# Adapter — WordPress / WooCommerce

## Principle

Preserve the WordPress/WooCommerce ecosystem. Don't recreate in JavaScript what the platform already solves well without a technical reason.

## Architectural preference

When compatible with the project:
- block theme;
- `theme.json` as global design tokens;
- templates and template parts;
- reusable patterns;
- WooCommerce Blocks;
- child theme when needed;
- official hooks/APIs before fragile overrides.

## WooCommerce

Ensure consistency across:
- Shop/PLP;
- category/taxonomy;
- single product/PDP;
- mini-cart/cart;
- checkout;
- my account;
- notices/validation.

Don't style only the homepage and abandon transactional screens.

## Plugins and themes

Do not install a plugin/theme/package without explicit approval.
Before recommending a dependency:
- validate necessity;
- compatibility;
- maintenance;
- performance impact;
- license;
- native alternative.

## Production

Writes to production, deployment, migration, critical updates or checkout changes require approval per the organization's governance process.

## QA

When tools allow:
- test a full purchase in a safe/staging environment;
- variants;
- coupon when applicable;
- shipping;
- payment methods in sandbox;
- checkout errors;
- account;
- responsiveness;
- cache;
- Core Web Vitals.
