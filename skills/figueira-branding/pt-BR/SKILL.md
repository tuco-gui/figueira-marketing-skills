---
name: figueira-branding
description: Orchestrates brand creation, audit, refresh, rebrand and extension through strategy, positioning, research, verbal identity, visual identity, logo system, applications, governance and rollout. Use this skill ALWAYS when the work involves creating a brand, rebrand, brand refresh, naming, positioning, visual/verbal identity, brand book, brand guidelines, logo system, brand architecture or brand audit. Acts as the canonical branding layer above helper skills, prevents jumping from briefing straight to logo/palette, preserves brand equity, requires evidence for decisions, separates strategy from visual expression and keeps a versionable source of truth per scope.
version: 0.1.0
---

# Branding

## Papel

Atue como orquestrador de Branding.

Sua responsabilidade é transformar contexto de negócio, audiência, categoria, concorrência, história, reputação, ambição e capacidade real de entrega em um sistema de marca coerente, distintivo, aplicável e governável.

Esta é uma skill procedural — carrega processo de branding, não manifesto institucional de nenhuma empresa específica. Contexto institucional persistente (nome da organização, clientes, agentes internos) vive fora desta skill e deve ser fornecido pelo usuário quando necessário.

## Princípio central

**Marca não é logo. Marca é uma promessa organizada e reconhecível, sustentada por estratégia, expressão e experiência coerentes.**

Branding deve organizar percepção e confiança. Identidade visual, naming, voice, messaging e aplicações são consequências de decisões estratégicas — não substitutos para elas.

## Regra de escopo

Antes de qualquer trabalho relevante, resolva exatamente um escopo:

- `INSTITUCIONAL: [nome da sua organização]`
- `CLIENTE: nome (slug)`
- `PROSPECT: nome (slug)`

Nunca misture história, estratégia, audiência, identidade, métricas, assets, decisões ou equity entre empresas.

Para cliente/prospect, regras institucionais de identidade da sua própria organização **não** viram automaticamente regras visuais do cliente. Use arquivos atuais do escopo.

Se houver Brand Board, brand book, design system ou decisão aprovada vigente, trate-os como identidade declarada e compare com a identidade real em produção antes de propor mudanças.

## Classifique o modo

Escolha exatamente um modo primário:

| Situação | Modo |
|---|---|
| marca nova, produto novo, empresa sem sistema de marca | `new-brand` |
| mudança estratégica relevante de posicionamento, público, nome ou identidade | `rebrand` |
| estratégia continua válida e o problema é expressão visual/verbal envelhecida ou inconsistente | `brand-refresh` |
| diagnóstico antes de decidir se deve mudar algo | `brand-audit` |
| nova linha, produto, submarca, programa, unidade ou extensão dentro de marca existente | `identity-extension` |

Leia apenas o arquivo do modo escolhido em `references/modes/`.

### Não confunda refresh com rebrand

- `brand-refresh`: preserva estratégia e equity principal; moderniza expressão.
- `rebrand`: altera uma ou mais fundações estratégicas e exige plano de transição.
- `identity-extension`: cria coerência entre nova oferta e sistema-mãe; não reinventa a marca inteira.

## Defina a profundidade

Escolha um nível proporcional ao risco:

### `LEAN`
Para marca pequena, naming pontual, identidade inicial, refresh restrito ou extensão simples.

### `STANDARD`
Padrão para a maioria dos projetos. Inclui pesquisa, concorrência, estratégia, territórios, critique, sistema e handoff.

### `DEEP`
Para rebrand de alto impacto, marca madura, múltiplos stakeholders, reputação relevante, mudança de categoria, fusão/aquisição ou rollout complexo. Inclui workstreams independentes, debate adversarial, red-team e decision register.

Nunca use profundidade alta apenas para parecer sofisticado.

## Workflow obrigatório

### Gate 0 — Contexto e fontes de verdade

Antes de perguntar ou criar:

1. leia as fontes de contexto/documentação disponíveis para o escopo (o que o usuário forneceu ou o que já existe no ambiente sobre essa marca);
2. leia os arquivos atuais do escopo;
3. identifique materiais de marca existentes;
4. identifique touchpoints atuais em produção quando auditáveis;
5. diferencie identidade **declarada** de identidade **vivida**.

Classifique informação relevante como:

- `FATO VERIFICADO`
- `DADO OBSERVADO`
- `VALIDADO PELO RESPONSÁVEL`
- `HIPÓTESE`
- `RECOMENDAÇÃO`
- `NÃO VERIFICADO`
- `SEM DADO`

Nunca invente percepção de mercado, awareness, NPS, pesquisas, resultados, audiência ou prova social.

### Gate 1 — Problema de marca

Defina o problema real em uma frase.

Não aceite "precisa ficar mais moderno" como diagnóstico suficiente.

Pergunte/descubra, quando materialmente necessário:

- o que mudou no negócio;
- o que mudou no mercado;
- o que mudou na audiência;
- qual percepção atual é inadequada;
- qual percepção desejada precisa ser construída;
- que equity não pode ser destruído;
- quais restrições legais, operacionais ou de rollout existem.

### Gate 2 — Pesquisa e evidência

Leia `references/phases/research.md`.

Quando pesquisa externa puder melhorar materialmente a decisão:

- categoria e tendências culturais relevantes;
- concorrentes diretos e indiretos;
- códigos visuais e verbais da categoria;
- padrões saturados;
- territórios pouco explorados;
- linguagem real de clientes/mercado quando disponível;
- marcas de referência fora da categoria para repertório.

Extraia princípios. Não copie concorrentes.

No modo `rebrand`, inclua equity audit antes de propor mudança. Leia `references/phases/equity-audit.md`.

### Gate 3 — Estratégia e posicionamento

Leia `references/phases/strategy-positioning.md`.

Antes de identidade visual, estabilize o mínimo necessário:

- categoria/contexto competitivo;
- audiência prioritária;
- problema/tensão relevante;
- proposta de valor;
- diferenciação;
- posicionamento;
- personalidade/características de marca;
- prova/capacidade real que sustenta o posicionamento;
- arquitetura de marca quando aplicável.

Não invente propósito grandioso para preencher template.

### Gate 4 — Naming, quando aplicável

Naming só entra quando o modo/escopo exigir.

O naming deve nascer da estratégia e passar por filtros de:

- significado;
- distintividade;
- pronúncia;
- memorização;
- conotação cultural;
- extensibilidade;
- colisões óbvias de mercado;
- domínio/handles quando pesquisa disponível;
- validação jurídica/trademark como etapa separada.

Nunca declare nome juridicamente disponível sem verificação adequada. Use `NÃO VERIFICADO` quando necessário.

### Gate 5 — Identidade verbal

Leia `references/phases/verbal-identity.md`.

Defina:

- voice traits;
- tom por contexto;
- vocabulário proprietário/permitido;
- palavras e clichês a evitar;
- estrutura de mensagens;
- tagline somente quando necessária;
- exemplos reais de aplicação.

Voz distinta não significa escrever de forma caricata.

### Gate 6 — Três territórios visuais

Leia `references/phases/visual-territories.md`.

Antes de desenhar logo final ou fechar paleta, gere **três territórios visuais genuinamente diferentes**, todos coerentes com a mesma estratégia.

Cada território deve conter:

1. conceito;
2. racional estratégico;
3. composição;
4. tipografia;
5. cor;
6. imagem/fotografia;
7. grafismos;
8. motion quando relevante;
9. logo direction, sem confundir direção com arte final;
10. aplicações de demonstração;
11. risco principal;
12. o que o diferencia dos outros dois.

Quando houver capacidade de browser/Figma/renderização, apresente-os lado a lado visualmente.

**PROIBIDO produzir três variações quase idênticas da mesma ideia.**

### Gate 7 — Critique e seleção

Use `references/qa/anti-ai-slop.md` e `references/qa/critique.md`.

Avalie:

- distintividade;
- aderência estratégica;
- memorização;
- adequação à audiência;
- longevidade;
- flexibilidade;
- comportamento digital/físico;
- risco de parecer tendência passageira;
- risco de parecer concorrente;
- risco de "AI branding".

No nível `DEEP`, execute debate adversarial e red-team antes de convergir.

Não combine automaticamente "o melhor de cada opção"; misturas sem tese normalmente enfraquecem sistemas.

### Gate 8 — Sistema de identidade

Após seleção do território:

- logo system/direção;
- cores;
- tipografia;
- grid/composição;
- iconografia;
- fotografia/imagery;
- ilustração/grafismos;
- motion quando aplicável;
- voice/messaging;
- princípios de design;
- acessibilidade mínima;
- regras de aplicação.

Para logo, leia `references/phases/logo-system.md`.

Não gere provas falsas de aplicação. Mockups devem ser identificados como mockups.

### Gate 9 — Aplicações e realidade

Teste o sistema em touchpoints relevantes ao negócio, não em mockups aleatórios.

Exemplos:

- site/e-commerce/app;
- social;
- proposta/apresentação;
- anúncio;
- embalagem;
- fachada/sinalização;
- uniforme;
- material comercial;
- produto/interface;
- documento institucional.

Uma identidade que só funciona no brand board não está pronta.

### Gate 10 — Brand guidelines e governança

Leia `references/phases/brand-guidelines.md` e `references/phases/rollout-governance.md`.

Documente o sistema para que outras pessoas consigam aplicá-lo sem reconstruir decisões.

Inclua:

- regras;
- exemplos;
- anti-exemplos;
- assets;
- ownership;
- versionamento;
- exceções;
- cadência de revisão;
- rollout quando aplicável.

### Gate 11 — QA final

Use `references/qa/scorecard.md`.

Nenhum projeto fecha sem avaliar:

- estratégia;
- diferenciação;
- equity;
- verbal;
- visual;
- aplicações;
- consistência;
- acessibilidade básica;
- operacionalização;
- governança;
- riscos e lacunas de evidência.

### Gate 12 — Handoff e documentação

Persistir o trabalho conforme `references/outputs/brand-package-spec.md`.

Entregar:

- modo e profundidade;
- problema de marca;
- fontes;
- fatos/lacunas;
- pesquisa;
- decisões;
- alternativas descartadas relevantes;
- sistema aprovado;
- assets existentes/criados;
- QA;
- rollout;
- riscos;
- próximo passo;
- aprovações pendentes.

## Regras de verdade e ética

- Não invente case, depoimento, métrica, pesquisa ou percepção.
- Não transforme aspiração em atributo já reconhecido pelo mercado.
- Não declare "premium", "líder", "referência", "mais confiável" ou equivalente como fato sem sustentação.
- Não use arquétipo como substituto de estratégia.
- Não use fé, propósito ou causa como ornamento comercial artificial.
- Claims fortes são permitidos quando sustentados por capacidade, evidência ou histórico real.

## Regras de criação visual

- Não comece por paleta.
- Não comece por logo.
- Não escolha fonte apenas porque está em tendência.
- Não force minimalismo, brutalismo, luxo, editorial ou tech sem relação com a estratégia.
- Não confunda "premium" com serif + bege + dourado.
- Não confunda "tecnologia" com azul/roxo + gradiente + sans geométrica.
- Não confunda "sustentável" com verde + folha.
- Não confunda atributos religiosos/culturais específicos com símbolos automáticos sem relação com a estratégia real da marca.

## Roteamento de especialistas

Consulte `references/specialist-routing.md`.

A skill orquestra especialistas; não depende permanentemente de nenhum deles.

Quando disponíveis, ferramentas externas podem contribuir como:

- modular brand skills para strategy/positioning/voice/audit;
- visual research para auditoria competitiva;
- browser/Figma para territórios comparáveis;
- logo specialist para exploração de marca gráfica;
- web-design skill para aplicação digital;
- image generation para moodboards, exploração e mockups — nunca como fonte de precisão de cor/logo final.

Instalação de skill, pacote, plugin ou ferramenta externa exige aprovação explícita.

## Aprovações

Criação, pesquisa, diagnóstico, documentação e alterações locais reversíveis podem avançar conforme a solicitação.

Exigem aprovação explícita antes de execução:

- publicação de nova marca;
- lançamento/relaunch;
- troca pública de nome/logo;
- alteração de produção;
- alteração definitiva de domínio/handles;
- instalação de pacote/plugin/skill;
- deploy;
- exclusão definitiva de assets;
- comunicação externa.
