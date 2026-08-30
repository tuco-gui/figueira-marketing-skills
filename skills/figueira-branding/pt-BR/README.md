# figueira-branding

Skill de orquestração de branding para Claude Code / Agent Skills — cria, audita, dá refresh,
faz rebrand e estende marcas através de um workflow de 13 gates orientado por evidência.

## O que resolve

A maioria dos pedidos de "faça minha marca/logo" pula direto para paleta e tipografia sem passar
por posicionamento, pesquisa ou diferenciação. Esta skill impõe uma sequência: contexto →
problema de marca → pesquisa/evidência → estratégia → naming (quando aplicável) → identidade
verbal → três territórios visuais distintos → critique/seleção → sistema de identidade →
aplicações → brand guidelines/governança → QA final → handoff.

## Modos

| Modo | Quando usar |
|---|---|
| `new-brand` | marca nova, produto novo, sem sistema de marca existente |
| `rebrand` | mudança estratégica relevante (posicionamento, público, nome, identidade) |
| `brand-refresh` | estratégia continua válida, expressão está envelhecida/inconsistente |
| `brand-audit` | diagnóstico antes de decidir se algo precisa mudar |
| `identity-extension` | nova linha/submarca/produto dentro de uma marca existente |

## Profundidade

`LEAN` (projetos pequenos/pontuais) → `STANDARD` (padrão para a maioria dos projetos) → `DEEP`
(rebrand de alto impacto, marca madura, múltiplos stakeholders, rollout complexo).

## Estrutura

```
SKILL.md                          # instruções principais (workflow completo, 13 gates)
references/
  modes/                          # um arquivo por modo (new-brand, rebrand, ...)
  phases/                         # pesquisa, equity audit, estratégia, naming/verbal,
                                   # territórios visuais, logo system, guidelines, governança
  qa/                              # anti-ai-slop, critique, scorecard final
  outputs/                        # spec do pacote de marca entregável
  specialist-routing.md           # quando/como acionar ferramentas/skills externas por gate
evals/
  rubric.md                       # critérios qualitativos de avaliação
  cases.md                        # cenários de teste
```

O `SKILL.md` é carregado sempre; os arquivos de `references/` são carregados sob demanda
(progressive disclosure), conforme o modo e a fase em andamento.

## Uso

Peça para criar, auditar, dar refresh ou fazer rebranding de uma marca normalmente — a skill se
auto-ativa pela descrição em `SKILL.md`. Você também pode ser explícito:

> "Use a skill figueira-branding, modo `new-brand`, profundidade `LEAN`, para criar a marca de
> [negócio]."

## Princípio de design

Esta é uma skill **procedural, não institucional**. Ela carrega um método de branding — gates,
evidência, territórios visuais, governança — e não depende de nenhuma empresa, agente interno ou
sistema de conhecimento específico para funcionar. Qualquer contexto institucional (nome da sua
organização, clientes, ferramentas internas) deve ser fornecido por quem está usando a skill, no
momento do uso.

## Escopo público

Este pacote foi consolidado a partir de uma skill interna, com remoção de conteúdo
institucional/proprietário: menções a uma organização específica, agentes internos, caminhos de
base de conhecimento interna e fluxos de aprovação específicos de uma empresa. O que resta é
metodologia de branding genérica e reutilizável.

**Não inclui:** documentos estratégicos privados, dados de clientes, credenciais, ou qualquer
documentação institucional interna.
