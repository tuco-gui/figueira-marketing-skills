# Roteamento de especialistas

## Objetivo
Indicar quando um gate deste workflow deve acionar conhecimento/skill/agente especializado em vez de ser
resolvido genericamente dentro do `figueira-branding`.

## Mapeamento por gate

| Gate | Quando acionar especialista externo | O quê |
|------|--------------------------------------|-------|
| Gate 0 (contexto/escopo) | Sempre que o projeto envolve múltiplos escopos (agência/organização + cliente) | Uma skill/rotina de resolução de escopo, se disponível no ambiente, para não misturar dados entre INSTITUCIONAL/CLIENTE/PROSPECT |
| Gate 2 (pesquisa) | Pesquisa web/documental extensa, levantamento visual de concorrentes | Ferramentas de busca web e navegador, quando disponíveis |
| Gate 4 (naming) | Naming exige checagem de disponibilidade de domínio/marca registrável | Ferramentas de domínio (ex.: MCP de registro de domínio), quando disponíveis — nunca declarar disponibilidade sem checagem real |
| Gate 6-8 (territórios/logo) | Produção de artes finais em ferramenta de design real | MCP de Figma, quando disponível e o usuário tiver conectado |
| Gate 9 (aplicações) | Aplicação em site/loja real do cliente | MCPs de CMS/hospedagem já configurados no ambiente, sempre com aprovação antes de qualquer publicação |
| Gate 10 (rollout) | Mudança de DNS/domínio/hospedagem real | MCP de hospedagem/DNS disponível, apenas com aprovação explícita — essas são ações irreversíveis |
| Gate 12 (handoff) | Nenhum — este gate é interno à skill |

## Regra geral
Nenhum roteamento para especialista externo dispensa a exigência de aprovação explícita antes de ações
irreversíveis (publicação, deploy, troca de domínio, exclusão permanente). O roteamento indica *qual
ferramenta usar*, nunca autoriza pular a aprovação.

## Quando não rotear
Se a ferramenta/MCP necessária não estiver conectada ou autenticada, não simule o resultado — informe ao
responsável que a etapa depende de uma integração ainda não disponível, e continue com o que for possível
resolver sem ela (ex.: seguir com hipóteses claramente marcadas como `SEM DADO`).
