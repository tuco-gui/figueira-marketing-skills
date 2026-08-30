# Fase: Governança e rollout (parte do Gate 10)

## Objetivo
Definir como a marca vai de "documento aprovado" para "em uso no mundo real" sem quebrar consistência
nem pegar o time de surpresa — e sem executar nenhuma ação irreversível sem aprovação explícita.

## O que resolver
1. **Sequência de rollout** — o que muda primeiro (site, redes sociais, materiais comerciais, assinatura
   de e-mail, embalagem física) e por quê essa ordem.
2. **Dependências técnicas** — domínio, hospedagem, DNS, contas de redes sociais, sistemas que referenciam
   a marca antiga (facilita achar tudo que precisa mudar).
3. **Comunicação** — quem precisa ser avisado antes do lançamento (equipe interna, clientes, parceiros) e
   em que ordem.
4. **Ativos legados** — o que acontece com materiais/domínios/perfis antigos (redirecionar, arquivar,
   manter em paralelo por período de transição).
5. **Ponto de não-retorno** — a partir de qual ação a mudança se torna pública e difícil de reverter
   (lançamento no site principal, post público, comunicado a clientes). Tudo antes disso é reversível;
   tudo depois exige que o rollback também seja planejado.

## Regra de aprovação (não negociável)
Publicação de marca nova, lançamento/relançamento, troca pública de nome/logo, mudanças em produção,
alteração definitiva de domínio/handle, deploy, exclusão permanente de ativos, comunicação externa — todos
exigem aprovação explícita do responsável antes da execução. Isso vale mesmo que o `SKILL.md` já tenha
sido aprovado como processo — cada ação de execução real precisa de aprovação própria.

## Checklist mínimo antes de qualquer ação de rollout
- O responsável aprovou explicitamente esta ação específica (não apenas o projeto em geral)?
- Existe um plano de rollback se algo der errado?
- As dependências técnicas foram mapeadas?
- A comunicação interna/externa necessária já foi feita ou está agendada?

## Saída
Plano de rollout sequenciado + checklist de governança, pronto para orientar a execução real (que
permanece fora do escopo de decisão autônoma desta skill).
