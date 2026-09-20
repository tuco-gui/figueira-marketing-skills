# Validação — Figueira Content Squad

Antes de publicar uma alteração:

1. Cada skill mantém frontmatter YAML válido com `name` e `description`.
2. Todas as referências relativas apontam para arquivos existentes.
3. `plugin.json` é JSON válido e usa o manifesto portátil Agent Plugins.
4. `.codex-plugin/plugin.json` é apenas fallback; não diverge da identidade do manifesto raiz.
5. `.agents/plugins/marketplace.json` aponta para `./plugins/figueira-content-squad`.
6. Nenhuma skill depende de caminho absoluto específico de fornecedor.
7. Nenhuma skill presume memória implícita; deve reler o contexto canônico disponível.
8. Setup, Kotler, Hormozi, Ogilvy e Da Vinci são **skills**, não novos agentes institucionais.
9. O fluxo continua: Setup → Kotler → Hormozi → Ogilvy → Da Vinci.
10. Nenhum segredo, credencial ou dado privado de cliente é versionado neste repositório público.
