# Installation

The skills in this repository follow the Agent Skills folder pattern: one skill directory containing `SKILL.md` plus optional `references/`, `scripts/`, `assets/` and product metadata.

## Clone

```bash
git clone https://github.com/tuco-gui/figueira-marketing-skills.git
cd figueira-marketing-skills
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
git pull
```

For copied installs, copy the updated skill directory again after reviewing the changelog.

## Security

Skills can contain instructions, scripts and resources that an agent may execute or read. Review a third-party skill before installing it.

Never add credentials, client information, internal Figueira documents, private strategy, secrets or tokens to this public repository.
