# Adapter — WordPress / WooCommerce

## Princípio

Preserve o ecossistema WordPress/WooCommerce. Não recrie em JavaScript o que a plataforma já resolve bem sem um motivo técnico.

## Preferência arquitetural

Quando compatível com o projeto:
- block theme;
- `theme.json` como tokens de design globais;
- templates e template parts;
- patterns reutilizáveis;
- WooCommerce Blocks;
- child theme quando necessário;
- hooks/APIs oficiais antes de overrides frágeis.

## WooCommerce

Garanta consistência entre:
- Shop/PLP;
- categoria/taxonomia;
- produto único/PDP;
- mini-cart/carrinho;
- checkout;
- minha conta;
- avisos/validação.

Não estilize só a homepage e abandone as telas transacionais.

## Plugins e temas

Não instale um plugin/tema/pacote sem aprovação explícita.
Antes de recomendar uma dependência:
- valide a necessidade;
- compatibilidade;
- manutenção;
- impacto em performance;
- licença;
- alternativa nativa.

## Produção

Escritas em produção, deploy, migração, atualizações críticas ou mudanças de checkout exigem aprovação conforme o processo de governança da organização.

## QA

Quando as ferramentas permitirem:
- testar uma compra completa em ambiente seguro/staging;
- variantes;
- cupom quando aplicável;
- frete;
- métodos de pagamento em sandbox;
- erros de checkout;
- conta;
- responsividade;
- cache;
- Core Web Vitals.
