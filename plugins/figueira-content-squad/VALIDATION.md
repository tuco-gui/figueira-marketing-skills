# Validação — Figueira Content Squad

Antes de publicar uma alteração:

1. Cada skill mantém frontmatter YAML válido com `name` e `description`.
2. Todas as referências relativas apontam para arquivos existentes.
3. `plugin.json` é JSON válido e usa o manifesto portátil Agent Plugins.
4. `plugin.json` é a única fonte de configuração OpenAI do plugin; não existe overlay `.codex-plugin/plugin.json` paralelo.
5. `.agents/plugins/marketplace.json` aponta para `./plugins/figueira-content-squad`.
6. Nenhuma skill depende de caminho absoluto específico de fornecedor.
7. Nenhuma skill presume memória implícita; deve reler o contexto canônico disponível.
8. Setup, Kotler, Hormozi, Ogilvy e Da Vinci são **skills**, não novos agentes institucionais.
9. O fluxo continua: Setup → Kotler → Hormozi → Ogilvy → Da Vinci.
10. Nenhum segredo, credencial ou dado privado de cliente é versionado neste repositório público.
11. Para submissão ao diretório OpenAI: `displayName` e `shortDescription` têm no máximo 30 caracteres.
12. O manifesto inclui `logo` e `composerIcon` quadrados, entre 48×48 e 4096×4096 e menores que 5 MiB.
13. Há no máximo três prompts iniciais, cada um com no máximo 128 caracteres.
14. A pasta `submission/` mantém exatamente cinco casos positivos e três negativos para revisão; positivos incluem prompt, comportamento esperado, formato de saída e dados de teste; negativos incluem prompt, alternativa/recusa esperada e motivo de não execução.
15. Mudanças de publicação pública exigem revisão dos materiais em `submission/` e aprovação explícita do owner antes do envio.
