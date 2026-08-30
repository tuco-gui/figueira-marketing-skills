# Roteamento de Skills Auxiliares e Ferramentas

## Princípio

`figueira-web-design` é a camada de orquestração de web design. Skills auxiliares, registries e bibliotecas podem ampliar o repertório ou executar tarefas específicas; elas não substituem o briefing, a identidade atual, a tese de design, a crítica ou o QA.

## Skills auxiliares compatíveis

Quando instaladas/disponíveis no ambiente, considere:

### Direção e craft
- `design-taste-frontend`
- `frontend-design`
- `high-end-visual-design`
- `minimalist-ui`
- `industrial-brutalist-ui`
- `stitch-design-taste`
- `gpt-taste`

### Redesign/referência
- `redesign-existing-projects`
- `image-to-code`

### Marca e mídia
- `brandkit`
- `imagegen-frontend-web`
- `imagegen-frontend-mobile`

Nenhuma delas é uma dependência obrigatória desta skill. Verifique o que está realmente instalado/autorizado no seu ambiente antes de assumir disponibilidade.

## Fontes de componentes e repertório

Quando o problema pedir um componente, interação ou referência visual, leia `component-sources.md`.

### shadcn/ui
Priorize como base funcional/primitivas em React/Next.js quando compatível. Não use o visual padrão como identidade.

### 21st.dev
Priorize para descobrir alternativas e um repertório amplo. Verifique o item específico antes de incorporar código, especialmente licença e dependências.

### Magic UI
Use para motion e momentos de impacto em marketing quando coerente com a tese. Evite excesso de animação ornamental.

### Aceternity UI
Use como referência visual avançada e componentes. Verifique os termos/licença do item antes de reutilizar o código.

### React Bits
Use para microinterações/animações criativas em React. Preserve legibilidade, reduced motion e consistência de motion.

## Regra de instalação

Pesquisar e recomendar é diferente de instalar.

Não instale automaticamente um plugin, pacote, CLI, skill, MCP, tema ou dependência. A instalação exige aprovação explícita do responsável pelo projeto.

## Regra de seleção

Escolha a ferramenta **depois** da tese:

- visual geralmente refinado → skill de craft;
- identidade muito minimalista → `minimalist-ui`, se compatível;
- direção brutalista → `industrial-brutalist-ui`, se compatível;
- reconstrução a partir de uma referência → `image-to-code` como suporte, nunca como cópia cega;
- redesign de um projeto existente → `redesign-existing-projects`;
- componentes funcionais de app React → shadcn/ui como base possível;
- repertório/comparação de UI React → 21st.dev;
- motion de marketing → Magic UI / React Bits / Aceternity, escolhendo a menor combinação suficiente;
- implementação WooCommerce → adapter + especialista WordPress/WooCommerce;
- React/Next → adapter + desenvolvedor full-stack.

Nunca escolha uma estética só porque existe uma skill ou biblioteca com esse nome.

## Regra anti-Frankenstein

Não misture vários registries para preencher cada seção com uma estética diferente.

Se mais de uma fonte for usada:

1. normalize tokens;
2. normalize tipografia;
3. normalize radius/borders/shadows;
4. normalize motion;
5. elimine dependências redundantes;
6. faça QA em navegador no conjunto, não só em cada componente isolado.
