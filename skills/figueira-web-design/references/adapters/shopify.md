# Adapter — Shopify

## Principle

Use the theme's architecture and native features before adding apps or unnecessary code.

## Implementation

Prefer:
- Online Store 2.0;
- configurable sections and blocks;
- Liquid without excessively coupled logic;
- metafields/metaobjects for structured content;
- consistent tokens across the theme;
- progressive JS only where needed.

## E-commerce

Validate home, collection, product, cart, search and account according to the store.
Checkout has plan/platform-specific restrictions; don't promise customization the environment doesn't support.

## Apps

Do not install an app without explicit approval. Evaluate cost, speed impact, data, lock-in, and real necessity.
