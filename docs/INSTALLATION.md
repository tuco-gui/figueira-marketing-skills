# Installation

The skills in this repository are plain-text Agent Skills designed to be portable across compatible tools and instruction-loading environments.

## Clone the repository

```bash
git clone https://github.com/tuco-gui/figueira-marketing-skills.git
cd figueira-marketing-skills
```

## Generic installation

Copy the desired skill directory into the skills directory used by your agent environment:

```bash
cp -R skills/figueira-prompt-optimizer /path/to/your/agent/skills/
```

Keep the complete directory together, especially `SKILL.md` and `references/`, so detailed target instructions remain available on demand.

## Codex-style setup

Place the full skill directory in the configured skills path and invoke it by name:

```text
figueira-prompt-optimizer
```

Keep persistent project rules in `AGENTS.md`; do not copy skill references into persistent context.

## Claude Code-style setup

Place the skill directory where your Claude Code environment loads reusable skills or commands. Keep persistent project context in `CLAUDE.md`; keep this skill focused on the reusable procedure.

## Gemini-style setup

Keep persistent project context in the relevant `GEMINI.md` hierarchy. Expose this skill separately so target adapters are loaded only when required.

## Updating

```bash
git pull
```

For local development, a symlink can avoid manual copying:

```bash
ln -s /path/to/figueira-marketing-skills/skills/figueira-prompt-optimizer /path/to/your/agent/skills/figueira-prompt-optimizer
```

## Security

Never add secrets, client information, internal Figueira documents or private project context to a public skill directory.
