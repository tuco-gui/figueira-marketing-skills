# QA — Anti AI Slop

## Regra

Nenhum padrão abaixo é proibido por si só. O problema é o uso automático e repetitivo, sem relação com conteúdo, marca ou job.

## Sinais de alerta visuais

Questione quando você ver:
- um hero centralizado com headline + subhead + dois CTAs + mockup flutuante, aplicado como fórmula;
- um gradiente roxo/azul por reflexo;
- glassmorphism decorativo;
- um card dentro de outro card;
- `rounded-xl` em quase tudo;
- uma seção de três cards repetida várias vezes;
- pills/badges em excesso;
- um ícone genérico acima de cada heading;
- blobs, orbs e grids abstratos sem função;
- sombras pesadas usadas para simular profundidade;
- excesso de borders compensando hierarquia fraca;
- alternância mecânica de texto-esquerda/imagem-direita;
- um bento grid sem relação com a informação;
- números/estatísticas inventados para preencher espaço;
- um mockup de dashboard inventado para uma empresa que não vende software;
- slogans vagos como conteúdo principal;
- todo bloco com o mesmo espaçamento e peso;
- um layout perfeitamente simétrico sem motivo;
- animação aplicada em tudo;
- elementos sticky que cobrem conteúdo no mobile;
- tipografia escolhida só porque é popular em sites gerados por IA;
- uma página que parece uma colagem de componentes de shadcn/21st/Magic UI/Aceternity/React Bits;
- cinco efeitos de motion diferentes só porque estavam disponíveis no registry;
- um componente visualmente impressionante que prejudica o job principal;
- o visual padrão de uma biblioteca de componentes apresentado como a identidade própria do cliente.

## Sinais de alerta de conteúdo

- lorem ipsum no entregável final;
- depoimento fictício;
- logos de clientes sem validação;
- "+10.000 clientes" sem fonte;
- avaliações falsas;
- "últimas unidades" sem estoque real;
- contagem regressiva falsa;
- selos de segurança/certificação inventados;
- FAQs genéricas não ligadas a objeções reais.

## Teste de especificidade

Remova o logo, o nome e as cores.

Se o layout ainda puder pertencer a dezenas de empresas em setores diferentes, ele não tem direção específica.

Pergunte:
- o assunto influenciou a composição?
- a marca influenciou tipografia/imagética/ritmo?
- o conteúdo influenciou a estrutura?
- há pelo menos uma decisão memorável que não é um efeito gratuito?

## Exceção de marca

Não rejeite Inter, Montserrat ou qualquer fonte só porque é comum quando ela faz parte do design system atual. O problema é usar um padrão sem contexto.

## Teste anti-colagem de componentes

Ao usar componentes externos, pergunte:

- todos parecem pertencer ao mesmo design system?
- radius, border, shadow, tipo, cor e espaçamento foram normalizados?
- existe uma única linguagem de motion?
- todo efeito tem uma função?
- a interface ainda faria sentido se removêssemos as animações?
- a soma das dependências é proporcional ao benefício?

Se a resposta for não, reduza componentes/efeitos e reconstrua a coerência antes do QA final.
