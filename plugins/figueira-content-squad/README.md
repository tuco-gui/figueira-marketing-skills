# Figueira Content Squad

Plugin portátil e fonte canônica do squad de conteúdo da Figueira Marketing.

## Skills

- `setup` — cria/atualiza os arquivos canônicos de contexto do cliente.
- `kotler` — planeja calendário editorial e briefings.
- `hormozi` — refina e seleciona ganchos.
- `ogilvy` — redige o post final no tom de voz do cliente.
- `davinci` — transforma post aprovado em narrativa e carrossel HTML/PNG.

Fluxo recomendado: **Setup → Kotler → Hormozi → Ogilvy → Da Vinci**.

## Fonte de verdade

Esta pasta é a fonte canônica do squad. Não mantenha cópias manuais divergentes em outros repositórios.

Os arquivos de contexto por cliente são:
`briefing.md`, `tom-de-voz.md`, `brandbook.md`, `lead-magnets.md`, `cases.md` e `referencias.md`.

Em repositórios, localização recomendada: `content/clients/<slug>/context/`.
Em ChatGPT, os mesmos arquivos podem viver no Projeto/Work do cliente.

## Compatibilidade

- ChatGPT Chat e Work, quando o plugin estiver instalado/publicado para a conta ou workspace.
- Codex web/cloud quando executado em um repositório com o plugin disponível.
- ChatGPT/Codex desktop via marketplace de plugin.
- Codex CLI via `/plugins` ou `codex plugin marketplace add tuco-gui/figueira-marketing-skills`.

O manifesto portátil `plugin.json` é a única fonte de configuração OpenAI deste plugin. Não mantenha overlay paralelo em `.codex-plugin/`.

## Instalação pelo marketplace

O marketplace canônico está em `.agents/plugins/marketplace.json` na raiz deste repositório.

No Codex CLI:

```bash
codex plugin marketplace add tuco-gui/figueira-marketing-skills
```

Depois abra `/plugins`, selecione **Figueira Marketing Skills** e instale **Figueira Content Squad**.

Para ChatGPT Web público, use o pacote skill-only deste mesmo diretório no portal de submissão da OpenAI. Após aprovação, o plugin passa a ser distribuído pelo diretório universal compartilhado por ChatGPT e Codex. Marketplaces Git continuam sendo o canal de desenvolvimento/teste e distribuição privada.

## Regra de manutenção

**Editar → validar → commit → push.**
Mudanças do squad devem acontecer neste repositório e os demais projetos devem apenas referenciar esta fonte.
