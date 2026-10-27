# Installation

The skills in this repository follow the Agent Skills folder pattern: one skill directory containing `SKILL.md` plus optional `references/`, `scripts/`, `assets/` and product metadata.

Available skills: `figueira-prompt-optimizer`, `figueira-copywriting`, `figueira-branding`; plus upstream Impeccable, Emil Kowalski Skills, and Taste Skill as Git submodules. Every command below uses `figueira-prompt-optimizer` as the example — substitute another Figueira-authored skill name to install it.

`figueira-copywriting` and `figueira-branding` ship in English at their skill root and include a full Portuguese (Brazil) mirror under `<skill>/pt-BR/`. Installing the skill (by any method below) makes both available; the agent loads the English `SKILL.md` by default, and `pt-BR/SKILL.md` is available as reference material for Portuguese-speaking workflows.

## Clone

```bash
git clone --recurse-submodules https://github.com/tuco-gui/figueira-marketing-skills.git
cd figueira-marketing-skills
git submodule update --init --recursive
```

## Fast local installer (macOS/Linux)

The repository includes a symlink/copy helper:

```bash
./scripts/install-skill.sh figueira-prompt-optimizer claude
./scripts/install-skill.sh figueira-prompt-optimizer gemini
./scripts/install-skill.sh figueira-prompt-optimizer agents
```

Default mode is `--link`, which is convenient for development because `git pull` updates the installed skill immediately. Use `--copy` as the third argument for an independent copy.

---

## Claude Code

Claude Code discovers personal skills at:

```text
~/.claude/skills/<skill-name>/SKILL.md
```

and project skills at:

```text
<project>/.claude/skills/<skill-name>/SKILL.md
```

### Personal install

```bash
mkdir -p ~/.claude/skills
ln -s "$(pwd)/skills/figueira-prompt-optimizer" \
  ~/.claude/skills/figueira-prompt-optimizer
```

Or use the included installer:

```bash
./scripts/install-skill.sh figueira-prompt-optimizer claude
```

Claude can auto-select the skill from its description or you can invoke it directly as:

```text
/figueira-prompt-optimizer
```

---

## Gemini CLI

Gemini CLI supports user skills at `~/.gemini/skills/` (and `~/.agents/skills/`) and workspace skills at `.gemini/skills/` (and `.agents/skills/`).

### Install directly from this GitHub repository

```bash
gemini skills install https://github.com/tuco-gui/figueira-marketing-skills.git \
  --path skills/figueira-prompt-optimizer
```

### Or link a clone

```bash
./scripts/install-skill.sh figueira-prompt-optimizer gemini
```

Verify discovery in Gemini CLI:

```text
/skills list
```

After editing a linked skill, refresh with:

```text
/skills reload
```

---

## Codex / OpenAI Agent Skills

The current Codex skill format uses `SKILL.md` and supports product-specific UI metadata in `agents/openai.yaml`. This repository includes that metadata for `figueira-prompt-optimizer`.

For direct local Agent Skills use, install to the interoperable `.agents/skills` location:

```bash
./scripts/install-skill.sh figueira-prompt-optimizer agents
```

which links to:

```text
~/.agents/skills/figueira-prompt-optimizer
```

OpenAI's current public distribution direction for Codex is the plugin system, where a skill can be bundled inside a skill-only plugin. The canonical skill in this repository stays vendor-portable; a Codex plugin wrapper can be maintained separately without duplicating the procedural content.

---

## Project/workspace install

For a repository that should carry the skill for collaborators, copy or link the skill into the tool-specific project directory, for example:

```bash
mkdir -p .claude/skills
cp -R /path/to/figueira-marketing-skills/skills/figueira-prompt-optimizer \
  .claude/skills/
```

or:

```bash
mkdir -p .gemini/skills
cp -R /path/to/figueira-marketing-skills/skills/figueira-prompt-optimizer \
  .gemini/skills/
```

For an interoperable project layout where supported:

```text
.agents/skills/figueira-prompt-optimizer/SKILL.md
```

## Updating

For symlink installs:

```bash
cd /path/to/figueira-marketing-skills
git pull --ff-only
git submodule update --init --recursive
```

For copied installs, copy the updated skill directory again after reviewing the changelog.

## Security

Skills can contain instructions, scripts and resources that an agent may execute or read. Review a third-party skill before installing it.

Never add credentials, client information, internal Figueira documents, private strategy, secrets or tokens to this public repository.


---

## Figueira Content Squad plugin

O squad de conteúdo é distribuído como um plugin skill-only portátil em:

```text
plugins/figueira-content-squad/
```

O mesmo pacote contém cinco skills: `setup`, `kotler`, `hormozi`, `ogilvy` e `davinci`.

### Codex CLI

Adicione o marketplace deste repositório:

```bash
codex plugin marketplace add tuco-gui/figueira-marketing-skills
```

Depois abra:

```text
/plugins
```

Selecione **Figueira Marketing Skills**, instale **Figueira Content Squad** e inicie uma nova sessão.

### ChatGPT/Codex desktop

O marketplace canônico está em `.agents/plugins/marketplace.json`. Depois que a fonte estiver configurada no cliente, instale **Figueira Content Squad** pelo Diretório de Plugins e inicie um novo chat/sessão.

### ChatGPT Chat e Work na Web

O pacote usa o manifesto portátil atual de plugins.

- **Diretório público:** envie o ZIP skill-only gerado por `scripts/package-content-squad.sh` ao portal de submissão da OpenAI. Depois de aprovado, o mesmo plugin fica disponível no diretório universal compartilhado por ChatGPT e Codex.
- **Workspace compatível:** administradores podem importar/sincronizar o marketplace GitHub para uso privado antes da publicação pública.

A fonte continua sendo `plugins/figueira-content-squad/`; não crie uma cópia separada "Web".

### Codex web/cloud

Quando o Codex estiver executando um repositório que referencia este marketplace/plugin, as mesmas skills ficam disponíveis sem fork de conteúdo.

### Atualização

Não edite cópias nos projetos consumidores. Atualize este repositório:

```bash
git pull --ff-only origin main
```

Projetos consumidores devem atualizar/sincronizar o marketplace ou plugin instalado.


## Official web design skills (replacing figueira-web-design)

The previous Figueira web-design skill is no longer distributed. Its replacement consists of official upstream repositories pinned under `skills/`. Fetch them with `git submodule update --init --recursive`.

Install into your agent using the upstream instructions; simply cloning the submodules does **not** activate them in an agent:

```bash
npx impeccable install
npx skills@latest add emilkowalski/skills
npx skills add https://github.com/Leonxlnx/taste-skill --skill "design-taste-frontend"
```

Taste requires Node.js 22+ and Chrome/Chromium/Edge for browser checks. Do not overwrite unrelated global skills. To refresh pinned upstream revisions, review new upstream changes before moving each submodule commit.
