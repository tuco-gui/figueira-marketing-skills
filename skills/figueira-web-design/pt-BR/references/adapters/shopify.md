# Adapter — Shopify

## Princípio

Use a arquitetura do tema e os recursos nativos antes de adicionar apps ou código desnecessário.

## Implementação

Prefira:
- Online Store 2.0;
- sections e blocks configuráveis;
- Liquid sem lógica excessivamente acoplada;
- metafields/metaobjects para conteúdo estruturado;
- tokens consistentes em todo o tema;
- JS progressivo só onde for necessário.

## E-commerce

Valide home, coleção, produto, carrinho, busca e conta de acordo com a loja.
O checkout tem restrições específicas de plano/plataforma; não prometa customização que o ambiente não suporta.

## Apps

Não instale um app sem aprovação explícita. Avalie custo, impacto em velocidade, dados, lock-in e necessidade real.
