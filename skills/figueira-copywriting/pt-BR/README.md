# figueira-copywriting — v0.1.0

Orquestrador de copywriting de alta conversão e alta retenção.

## Objetivo

Transformar contexto, estratégia, VOC (voice of customer), oferta e evidência em comunicação:

- clara;
- magnética;
- persuasiva;
- verdadeira;
- coerente com a marca;
- adequada ao estágio de consciência do público;
- mensurável.

## Modos

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

## Arquitetura

- `SKILL.md` — orquestração: gates de contexto, estratégia, magnetismo, persuasão, verdade, QA, teste
- `references/modes/` — playbooks por canal
- `references/strategy/` — VOC, oferta, consciência, sofisticação, Big Idea, mecanismo, funil
- `references/magnetic/` — hooks, curiosidade, storytelling, ritmo
- `references/persuasion/` — prova, objeções, autoridade, risco, urgência/escassez
- `references/qa/` — Truth Gate, persuasão, magnetismo, anti-slop, compliance, CRO
- `references/testing/` — variantes e aprendizado
- `references/outputs/` — especificação dos entregáveis
- `evals/` — rubrica de avaliação e casos de teste

Esta é a versão em português; a versão canônica em inglês está na raiz da skill.

## Uso

```text
Use figueira-copywriting.
Modo: landing-page.
Contexto: [briefing, público, oferta, provas disponíveis]
```

```text
Use figueira-copywriting.
Modo: copy-audit.
Cole a página/anúncio existente para auditoria.
```

## Princípios não negociáveis

- Estratégia antes de texto: sem público, oferta e consciência definidos, não redige copy final.
- Não inventa prova, case, depoimento, métrica ou urgência/escassez falsa (`Truth Gate`).
- Persuasão legítima, não manipulação: o limite é falsidade, distorção material ou exploração deliberada de vulnerabilidade.
- Toda peça comercial passa por QA de conversão (Persuasion Audit, Magnetic Pull, anti-AI-slop, compliance, CRO/Copy Chief, scorecard) antes de ser considerada pronta.
- Produz rascunhos e variantes livremente, mas exige aprovação humana explícita antes de publicar, enviar, ativar campanha ou alterar oferta/preço em produção.

## Design principle

A skill é procedural: gates, playbooks de canal e checklists de QA reutilizáveis. Ela não carrega manifesto de empresa, contexto operacional privado, dados de cliente ou material de terceiros com licença restritiva.

## Public-safe scope

Este repositório exclui deliberadamente documentos estratégicos privados, dados de cliente, credenciais e documentação institucional interna.
