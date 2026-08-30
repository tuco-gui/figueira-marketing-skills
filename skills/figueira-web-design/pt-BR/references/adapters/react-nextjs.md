# Adapter — React / Next.js

## Princípio

Escolha a arquitetura pelo job e pela manutenibilidade, não pela tendência.

## Implementação

- componha por domínio e reuso real;
- preserve tokens em variáveis CSS/design system;
- use os limites server/client de forma deliberada;
- minimize JavaScript no client-side;
- trate estados de loading/error/empty;
- preserve semântica e acessibilidade;
- evite abstrações genéricas prematuras.

## Bibliotecas de componentes e registries

Bibliotecas como shadcn/ui, 21st.dev, Magic UI, Aceternity UI, React Bits e similares são **matéria-prima**, não direção de arte.

Antes de incorporar qualquer componente externo, leia `../component-sources.md` e valide:

- compatibilidade com a versão/stack atual;
- pacotes e dependências extras;
- necessidade de client component;
- CSS/estilos globais necessários;
- Motion/canvas/WebGL quando presentes;
- acessibilidade e reduced motion;
- impacto em bundle/performance;
- licença do item/código;
- adaptabilidade ao design system.

### Estratégia sugerida

- **shadcn/ui** → primitivas e componentes funcionais;
- **21st.dev** → descoberta/comparação de alternativas;
- **Magic UI** → motion/efeitos de marketing controlados;
- **Aceternity UI** → efeitos visuais avançados sob validação de licença;
- **React Bits** → microinterações e animações criativas.

Use a menor combinação suficiente. Não faça colagem de vários registries.

Adapte tokens, composição e conteúdo ao projeto. Não entregue o visual padrão de uma biblioteca.

## Performance

Quando aplicável:
- otimização de imagem;
- fontes;
- code splitting;
- cache;
- streaming;
- tamanho de bundle;
- Core Web Vitals;
- reduzir componentes client-side usados só para decoração;
- respeitar `prefers-reduced-motion` em motion relevante.
