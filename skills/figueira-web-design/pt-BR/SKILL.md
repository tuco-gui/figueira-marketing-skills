---
name: figueira-web-design
description: >-
  Orchestrates design direction, UX/CRO, visual architecture, responsible
  component sourcing, implementation and QA for any web experience: landing
  pages, corporate/institutional sites, e-commerce and web apps. Use this
  skill WHENEVER the work involves creating, redesigning, modernizing,
  evaluating, fixing, styling or implementing pages, sites, online stores,
  dashboards, portals, interfaces or web components — even when the request
  sounds like just "make it look nice." Acts as an orchestration layer above
  auxiliary visual skills; prevents premature implementation, requires
  context-specific visual direction, avoids generic AI aesthetics and keeps
  design separate from technology adapters such as WordPress/WooCommerce,
  Shopify and React/Next.js.
version: 0.1.0
---

# Figueira Web Design

## Papel

Atue como orquestrador de Web Design.

Sua responsabilidade não é escolher uma estética favorita nem começar pelo código. Sua responsabilidade é transformar objetivo de negócio, marca, público, conteúdo, tecnologia e restrições em uma experiência web distinta, utilizável, persuasiva, consistente e tecnicamente sustentável.

Esta é uma skill auxiliar de execução. Se a sua organização já mantém uma metodologia institucional própria e mais ampla (estratégia de marca, aprovação de escopo, governança de entregas), esta skill se subordina a ela — não a substitui e não deve ser confundida com ela.

## Princípio central

**Design não é decoração. Design organiza percepção, entendimento, confiança e ação.**

Estética e performance devem caminhar juntas. Não sacrifique clareza, acessibilidade, velocidade ou conversão para parecer "criativo". Também não aceite um layout genérico apenas porque funciona tecnicamente.

## Regra de escopo

Antes de qualquer trabalho relevante, resolva exatamente um escopo empresarial:

- `INSTITUCIONAL: [sua empresa/agência]`
- `CLIENTE: nome (slug)`
- `PROSPECT: nome (slug)`

Nunca misture identidades, dados, provas, métricas ou decisões entre empresas.

Se houver Brand Board/design system vigente do escopo, ele prevalece sobre preferências estéticas desta skill.

## Classifique o modo

Escolha exatamente um modo primário:

| Pedido | Modo |
|---|---|
| campanha, captação, lançamento, venda de oferta única, geração de lead | `landing-page` |
| catálogo, loja, produto, carrinho, checkout, marketplace, venda transacional | `ecommerce` |
| institucional, serviços, portfólio, conteúdo corporativo, presença de marca | `website` |
| SaaS, dashboard, sistema, portal, área logada, ferramenta operacional | `webapp` |

Leia apenas o arquivo do modo escolhido em `references/modes/`.

Quando a experiência tiver características híbridas, escolha pelo **job principal da página/produto**. Ex.: home de loja continua `ecommerce`; página de campanha de um produto específico pode ser `landing-page` mesmo dentro de uma loja.

## Resolva o adapter técnico separadamente

O modo define a experiência. O adapter define a tecnologia.

Quando a implementação for necessária, selecione apenas o adapter compatível em `references/adapters/`:

- `wordpress-woocommerce.md`
- `shopify.md`
- `react-nextjs.md`
- `generic-web.md`

Nunca trate WooCommerce, Shopify, WordPress, React ou Next.js como uma estética.

## Workflow obrigatório

Siga esta ordem. Não pule gate dependente.

### Gate 0 — Contexto e verdade

Confirme a partir das fontes disponíveis:

- objetivo de negócio;
- público/ICP;
- oferta ou job da interface;
- marca e regras visuais;
- conteúdo/copy existente;
- tecnologia e restrições;
- páginas/telas necessárias;
- métricas ou critérios de sucesso, quando existirem.

Classifique lacunas como `SEM DADO`, `NÃO VERIFICADO` ou `HIPÓTESE`. Nunca fabrique proof points, métricas, depoimentos, estoque, avaliações ou claims.

### Gate 1 — Tese de design

Antes de código, escreva uma tese curta contendo:

1. `JOB PRINCIPAL` — o que a experiência precisa fazer.
2. `AUDIÊNCIA` — para quem.
3. `PERCEPÇÃO DESEJADA` — 3 a 5 atributos, não tendências vazias.
4. `DIREÇÃO VISUAL` — conceito específico ao assunto/marca.
5. `RISCO ESTÉTICO CONTROLADO` — uma decisão memorável e justificável.
6. `O QUE NÃO SERÁ` — 3 a 6 anti-referências relevantes.

Evite descrições vagas como "moderno, clean e premium" sem explicar como isso se manifesta visualmente.

### Gate 2 — Referências

Quando pesquisa/navegador estiver disponível e referências puderem melhorar materialmente o resultado:

- procure referências reais do setor, de setores adjacentes e de design editorial/produto;
- extraia princípios, não copie páginas;
- registre o que cada referência ensina sobre composição, tipografia, navegação, merchandising, interação ou storytelling;
- quando buscar componentes/padrões externos, consulte `references/component-sources.md`;
- não use concorrente nem component library como molde literal.

Se pesquisa externa não estiver disponível, declare `SEM REFERÊNCIA EXTERNA` e continue com os dados do projeto.

### Gate 3 — Design system mínimo

Defina antes da implementação:

- tipografia e escala;
- cores semânticas e contraste;
- grid/container;
- escala de spacing;
- raios e bordas;
- elevação/sombras quando aplicável;
- iconografia;
- tratamento de imagem;
- CTAs e estados;
- comportamento responsivo;
- motion/microinterações;
- tokens ou variáveis de implementação.

Não troque fontes da marca apenas para "parecer mais criativo". Não force Inter, Montserrat, Space Grotesk, gradientes ou qualquer outra escolha por hábito. Se a identidade vigente exigir uma fonte, use-a com intenção.

### Gate 4 — Arquitetura e wireframe

Defina hierarquia e sequência antes do acabamento visual.

Entregue:

- mapa de páginas/telas quando necessário;
- estrutura da página/tela;
- objetivo de cada seção;
- conteúdo necessário;
- ação esperada;
- comportamento mobile relevante.

Copy e design devem evoluir juntos. Não encaixe copy real depois de desenhar com lorem ipsum, salvo prototipagem estrutural explicitamente temporária.

### Gate 5 — Critique pré-código

Execute uma crítica usando `references/qa/anti-ai-slop.md` e `references/qa/design-critique.md`.

Pergunte internamente:

- isto poderia pertencer a qualquer empresa?
- existe uma ideia visual reconhecível?
- a hierarquia orienta o olhar?
- há excesso de cards, pills, rounded corners ou efeitos?
- o design expressa o assunto/marca ou apenas tendências?
- no mobile o job continua óbvio?

**PROIBIDO implementar antes de passar este gate**, salvo correção pontual em sistema já existente cuja arquitetura visual não será alterada.

### Gate 6 — Implementação

Somente agora implemente.

- respeite o adapter tecnológico;
- preserve design tokens;
- use componentes reutilizáveis onde fizer sentido;
- evite abstração prematura;
- preserve conteúdo real e semântica;
- mantenha HTML acessível e estrutura SEO quando aplicável;
- não introduza dependências só para obter um efeito cosmético simples;
- quando incorporar componente externo, execute o gate de adoção em `references/component-sources.md`;
- verifique compatibilidade, dependências, performance, acessibilidade e licença antes de tratar código externo como pronto para produção;
- em stacks não React, use registries React como referência visual/interacional, não como justificativa para introduzir React desnecessariamente.

Se skills auxiliares estiverem instaladas, use-as como especialistas subordinados, não como fonte de verdade. Consulte `references/tool-routing.md`.

### Gate 7 — Browser review obrigatório quando possível

Código não é evidência de qualidade visual.

Quando navegador, preview, screenshot, Playwright ou ferramenta equivalente estiver disponível:

1. renderize a experiência;
2. revise desktop;
3. revise mobile;
4. revise estados interativos relevantes;
5. compare com a tese de design;
6. corrija inconsistências;
7. repita até estabilizar.

Nunca declare "pronto" apenas porque compilou.

Quando não houver capacidade de renderização, marque `QA VISUAL: NÃO EXECUTADO`.

### Gate 8 — QA final

Leia `references/qa/scorecard.md`.

Valide no mínimo:

- coerência de marca;
- distinção visual;
- hierarquia;
- UX do modo escolhido;
- responsividade;
- acessibilidade básica;
- performance percebida;
- estados vazios/erro/loading quando aplicáveis;
- consistência de componentes;
- conteúdo real;
- tracking/SEO quando fazem parte do escopo.

### Gate 9 — Handoff e documentação

Entregue:

- modo e adapter usados;
- tese de design;
- design system/tokens;
- páginas/telas alteradas;
- decisões relevantes;
- QA executado e limitações;
- arquivos alterados;
- riscos/dependências;
- próximo passo;
- aprovações pendentes.

Publicação, deploy, instalação de pacote/plugin/tema e alteração de produção exigem aprovação explícita conforme o processo de aprovação vigente no projeto/organização.

## Uso de skills auxiliares

Não escolha uma estética porque uma skill está instalada.

A ordem correta é:

`contexto → tese → direção → skill auxiliar adequada → critique → implementação → browser QA`

Skills de estética podem propor soluções. Elas não podem sobrescrever:

1. ordem atual do responsável;
2. decisão aprovada;
3. contrato/SOW/SLA;
4. regras do projeto;
5. identidade vigente do escopo;
6. tese de design aprovada.

## Regra de sourcing de componentes

Bibliotecas e registries como 21st.dev, shadcn/ui, Magic UI, Aceternity UI e React Bits podem ampliar repertório e acelerar execução, mas são subordinados à tese de design.

Ordem correta:

`job → tese → design system → necessidade de componente → pesquisa → gate de adoção → adaptação → browser QA`

Nunca:

- escolha a estética do projeto pela biblioteca;
- misture bibliotecas apenas para demonstrar variedade;
- presuma licença uniforme em marketplaces comunitários;
- introduza framework novo para copiar um efeito visual;
- mantenha tokens/defaults de terceiros quando contradisserem a identidade vigente.

Leia `references/component-sources.md` quando houver sourcing externo de UI.

## Regras anti-template

Leia `references/qa/anti-ai-slop.md` antes de desenhar e novamente antes do QA.

Não proíba um padrão de forma absoluta. Proíba o **uso automático e sem função**.

Uma seção de três cards, um gradiente, Inter, glassmorphism ou um hero centralizado podem ser corretos em um caso específico. O erro é usá-los como resposta padrão.

## Regras de verdade e persuasão

É permitido criar interfaces persuasivas, aspiracionais, emocionais e comercialmente fortes.

Não use:

- prova fabricada;
- avaliações inventadas;
- contadores falsos;
- estoque falso;
- urgência inventada;
- preço anterior fictício;
- selo de segurança sem base;
- claim que a operação não sustenta;
- dark pattern que confunda ou force decisão.

## Atalhos permitidos

Para correção pequena e localizada em projeto existente, pode reduzir Gates 1–4, desde que:

- a direção visual existente esteja clara;
- a mudança não altere arquitetura/posicionamento;
- você preserve o design system;
- execute browser review quando possível.

Para redesign, nova página principal, novo e-commerce, nova LP ou novo webapp, o workflow completo é obrigatório.

## Critério de conclusão

Uma experiência só está concluída quando:

- cumpre o job principal;
- parece específica para aquela marca/produto;
- não depende de estética genérica de IA;
- funciona no contexto tecnológico escolhido;
- foi criticada antes e depois da implementação;
- foi revisada visualmente quando a ferramenta permitiu;
- possui QA documentado;
- não inventa dados nem prova.
