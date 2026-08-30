# Output: Especificação do pacote de marca (Gate 12)

## Objetivo
Definir o que efetivamente é entregue ao final do processo e como fica versionado/documentado — o
handoff propriamente dito.

## Estrutura do pacote final
```
<marca-slug>/
├── 00-estrategia/
│   ├── posicionamento.md        (saída do Gate 3)
│   └── pesquisa-evidencia.md    (saída do Gate 2, com classificação de evidência)
├── 01-identidade-verbal/
│   └── guia-de-voz.md           (saída do Gate 5)
├── 02-identidade-visual/
│   ├── territorios-avaliados.md (saída dos Gates 6-7, incl. os descartados e por quê)
│   ├── logo/                    (arquivos-fonte do sistema de logo, Gate 8)
│   └── paleta-tipografia.md
├── 03-aplicacoes/
│   └── ...                      (peças validadas no Gate 9)
├── 04-guidelines/
│   └── brand-guidelines.md      (saída consolidada de brand-guidelines.md)
├── 05-governanca/
│   └── plano-rollout.md         (saída de rollout-governance.md)
└── 06-qa/
    └── scorecard-final.md       (saída do Gate 11)
```

## Metadados obrigatórios do pacote
- Modo usado (`new-brand`/`rebrand`/`brand-refresh`/`brand-audit`/`identity-extension`).
- Depth usado (`LEAN`/`STANDARD`/`DEEP`).
- Escopo (`INSTITUCIONAL`/`CLIENTE`/`PROSPECT` + slug).
- Data e responsável pela aprovação final.
- Versão do pacote (para permitir revisões futuras sem perder histórico).

## Regra de versionamento
O pacote de marca deve ser versionável — mudanças futuras (mesmo pequenas, como ajuste de paleta) geram
uma nova versão documentada, não uma sobrescrita silenciosa do que foi aprovado. Isso preserva histórico
de decisão e evita perder o racional de por que algo era como era.

## Saída
Pacote completo, versionado, com racional rastreável de cada decisão de Gate 0 a Gate 11 — pronto para uso
operacional pela equipe e, quando aplicável, por fornecedores externos.
