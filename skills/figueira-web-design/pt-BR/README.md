# figueira-web-design

Skill de orquestração de design web para:
- landing pages;
- e-commerce;
- websites institucionais/corporativos;
- web apps.

## Propósito

Transformar objetivo de negócio, marca, público, conteúdo, tecnologia e restrições em uma experiência web distinta, utilizável, persuasiva, consistente e tecnicamente sustentável — antes de qualquer implementação.

A skill separa três decisões que costumam ser misturadas:
- **modo** — o job da experiência (`landing-page`, `ecommerce`, `website`, `webapp`);
- **direção visual** — tese de design, identidade e critique, resolvidas antes do código;
- **adapter técnico** — a stack (`wordpress-woocommerce`, `shopify`, `react-nextjs`, `generic-web`).

## Estrutura

```text
figueira-web-design/
├── SKILL.md
├── references/
│   ├── tool-routing.md
│   ├── component-sources.md
│   ├── modes/
│   │   ├── landing-page.md
│   │   ├── ecommerce.md
│   │   ├── website.md
│   │   └── webapp.md
│   ├── adapters/
│   │   ├── wordpress-woocommerce.md
│   │   ├── shopify.md
│   │   ├── react-nextjs.md
│   │   └── generic-web.md
│   └── qa/
│       ├── anti-ai-slop.md
│       ├── design-critique.md
│       └── scorecard.md
├── evals/
│   ├── rubric.md
│   └── cases.md
├── agents/
│   └── openai.yaml
├── assets/
│   └── icon.svg
└── pt-BR/
    (mesma estrutura, traduzida)
```

## Instalação

Como Agent Skill local (Claude Code, Codex, ambientes compatíveis com `.agents/skills`):

```bash
# copie ou symlink este diretório para o local de skills do seu ambiente, por exemplo:
cp -r figueira-web-design ~/.claude/skills/figueira-web-design
```

Não mantenha mais de uma cópia da skill em diretórios diferentes de skills no mesmo ambiente — isso pode gerar avisos de skill duplicada.

## Fontes de componentes governadas

A skill sabe quando consultar e como avaliar:

- 21st.dev;
- shadcn/ui;
- Magic UI;
- Aceternity UI;
- React Bits.

Elas nunca viram dependências obrigatórias. `references/component-sources.md` define um gate de adoção cobrindo job, coerência, stack, dependências, performance, acessibilidade, licença e manutenção antes de qualquer código externo ser tratado como pronto para produção.

Em stacks não React, essas fontes são tratadas principalmente como referência visual/interacional; a skill não introduz React/Next/Tailwind apenas para copiar um efeito.

## O que esta skill NÃO faz

- não instala plugin, tema, pacote ou dependência automaticamente;
- não altera produção, não publica, não faz deploy;
- não substitui o design system/Brand Board vigente de um projeto;
- não presume que uma biblioteca de componentes é uma direção de arte;
- não fabrica prova social, métricas, estoque ou dados.

## Design principle

Esta skill é procedural e independente de plataforma. Ela não carrega manifesto institucional, dados de cliente, credenciais ou processos internos de qualquer agência específica — apenas metodologia reaproveitável de design/desenvolvimento web.

## Public-safe scope

Esta skill exclui intencionalmente documentos estratégicos privados, informação de cliente, credenciais e documentação institucional interna.

## Localização

A versão canônica vive na raiz do repositório, em inglês. Uma versão completa em português (pt-BR), espelhando a mesma árvore de arquivos, vive em `pt-BR/`.
