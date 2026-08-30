# Fontes de Componentes e Repertório Visual

## Propósito

Este arquivo orienta quando e como consultar bibliotecas/registries externos durante um projeto governado por `figueira-web-design`.

Essas fontes são **matéria-prima**. Nenhuma delas substitui:

1. o contexto do escopo;
2. o Brand Board/design system atual;
3. a tese de design;
4. a arquitetura de conteúdo/UX;
5. a crítica;
6. o QA visual.

Nunca monte uma página como colagem de componentes tirados de registries diferentes.

## Gate de adoção de componente

Antes de incorporar código externo, responda:

1. **JOB** — o componente resolve um problema real, ou só parece interessante?
2. **COERÊNCIA** — ele se encaixa na tese e no design system do projeto?
3. **STACK** — é compatível com a tecnologia atual sem criar uma arquitetura paralela?
4. **DEPENDÊNCIAS** — quais pacotes, runtime, CSS, Motion/canvas/WebGL ou configuração ele adiciona?
5. **PERFORMANCE** — o ganho visual justifica o custo de JS, renderização e assets?
6. **ACESSIBILIDADE** — teclado, foco, reduced motion, semântica e contraste continuam adequados?
7. **LICENÇA** — os termos permitem o uso pretendido neste projeto/cliente?
8. **MANUTENÇÃO** — o código vai continuar compreensível e editável depois de integrado?

Se qualquer resposta relevante for desconhecida, marque `NÃO VERIFICADO` e não trate o componente como aprovado para produção.

## 1. 21st.dev

### Papel

Use principalmente como um **catálogo de descoberta e referência** para interfaces React/Tailwind: componentes, blocks, temas e padrões de composição feitos por vários autores.

### Bom para

- comparar várias soluções para o mesmo problema;
- pesquisar heroes, navegação, galerias, pricing, cards, tabelas, formulários e estados;
- encontrar referências de microinteração e composição;
- acelerar a implementação quando o componente realmente se encaixa na tese.

### Guardrails

- diversidade de autores significa diversidade de qualidade e estética;
- não assuma que todo item do marketplace compartilha a mesma licença;
- verifique a licença/origem do item escolhido antes de incorporar o código;
- adapte tokens, espaçamento, tipografia e motion ao design system do cliente;
- evite usar o prompt/código do componente como substituto de direção de arte.

### Nota de licença

O repositório histórico público `serafimcloud/21st` é MIT. Isso **não autoriza assumir** que todo componente publicado no catálogo do 21st.dev é MIT; itens de terceiros precisam ser verificados individualmente.

## 2. shadcn/ui

### Papel

Use como uma **base editável de componentes/primitivas**, especialmente em React/Next.js + Tailwind.

### Bom para

- formulários;
- dialogs/sheets/popovers;
- menus;
- tabelas;
- inputs;
- tabs;
- componentes acessíveis de aplicação;
- base para um design system proprietário.

### Guardrails

- shadcn/ui não é uma direção visual pronta;
- nunca entregue o visual padrão como identidade do cliente;
- customize tokens, tipografia, geometria, estados e composição;
- prefira primitivas estáveis a efeitos decorativos em interfaces operacionais;
- respeite a arquitetura já existente do projeto em vez de reinstalar uma base concorrente.

### Licença

MIT no projeto oficial.

## 3. Magic UI

### Papel

Use como fonte de **componentes expressivos, motion e efeitos de alto impacto**, principalmente para landing pages, sites de produto e momentos de destaque.

### Bom para

- âncoras de hero;
- motion de texto;
- marquees;
- grids visuais;
- efeitos de destaque;
- microinterações de marketing.

### Guardrails

- use no máximo os efeitos necessários para sustentar hierarquia e narrativa;
- não transforme a página em uma vitrine de animações;
- revise `prefers-reduced-motion` quando aplicável;
- avalie dependências de Motion e impacto em bundle;
- em e-commerce, efeitos nunca podem competir com descoberta, produto, preço ou CTA.

### Licença

MIT no repositório oficial `magicuidesign/magicui`.

## 4. Aceternity UI

### Papel

Use como fonte de **padrões visuais avançados e componentes interativos** para React/Next.js/Tailwind/Motion.

### Bom para

- backgrounds e efeitos de hero;
- timelines;
- parallax;
- efeitos de hover;
- elementos 3D/visuais;
- seções especiais de marketing.

### Guardrails

- o catálogo tem conteúdo gratuito e premium;
- não classifique a biblioteca inteira como MIT/open-source por padrão;
- verifique os termos específicos vigentes antes de reutilizar o código;
- não redistribua um componente/template contra sua licença;
- use como referência visual quando a licença do código não estiver confirmada;
- evite efeitos pesados quando performance ou legibilidade forem prioridade.

### Licença

A Aceternity tem termos próprios para os itens do catálogo. A verificação de licença é obrigatória antes de incorporar o código.

## 5. React Bits

### Papel

Use como repertório de **animações, microinterações, texto, backgrounds e elementos criativos** para projetos React.

### Bom para

- animações de texto;
- interações de hover/mouse;
- backgrounds;
- motion que sustenta a narrativa;
- momentos memoráveis em landing pages e sites institucionais;
- protótipos de interação.

### Guardrails

- não use uma animação só porque ela está disponível;
- preserve legibilidade e reduced motion;
- prefira uma ou duas assinaturas de motion consistentes em vez de vários efeitos diferentes;
- adapte o componente ao sistema visual, não o contrário;
- verifique a licença vigente antes de redistribuir ou empacotar componentes como produto/template.

### Licença

O repositório oficial atualmente declara `MIT + Commons Clause`; trate isso como diferente de MIT puro e valide o uso pretendido.

## Estratégia de seleção

| Necessidade | Fonte prioritária | Papel |
|---|---|---|
| componentes funcionais/base de app | shadcn/ui | fundação/primitivas |
| repertório amplo de componentes modernos | 21st.dev | descoberta/comparação |
| landing page com motion controlado | Magic UI | expressão visual |
| efeito visual avançado específico | Aceternity UI | referência/componente licenciado |
| microinteração/animação criativa | React Bits | assinatura de motion |

Não use cinco fontes só porque cinco estão disponíveis. Use a **menor combinação suficiente**.

## Regra para stacks não-React

Se o projeto é WordPress, WooCommerce, Shopify Liquid, HTML/CSS ou outra stack não-React:

- essas bibliotecas podem servir como **referência de comportamento e composição**;
- não introduza React/Next/Tailwind só para reproduzir um efeito;
- implemente o princípio subjacente nativamente na stack existente quando fizer sentido;
- se reproduzi-lo exigir uma arquitetura desproporcional, descarte o efeito.

## Regra de instalação

Pesquisar e avaliar uma biblioteca é permitido.

Instalar um pacote, CLI, plugin, MCP, tema ou dependência no ambiente/projeto exige a aprovação prevista pelo processo de governança do projeto/organização.
