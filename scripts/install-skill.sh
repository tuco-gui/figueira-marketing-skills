#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="${1:-}"
TARGET="${2:-}"
MODE="${3:---link}"

if [[ -z "$SKILL_NAME" || -z "$TARGET" ]]; then
  echo "Usage: $0 <skill-name> <claude|gemini|agents> [--link|--copy]" >&2
  exit 1
fi

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE="$REPO_ROOT/skills/$SKILL_NAME"

if [[ ! -f "$SOURCE/SKILL.md" ]]; then
  echo "Skill not found: $SOURCE" >&2
  exit 1
fi

case "$TARGET" in
  claude) BASE="$HOME/.claude/skills" ;;
  gemini) BASE="$HOME/.gemini/skills" ;;
  agents|codex) BASE="$HOME/.agents/skills" ;;
  *)
    echo "Unknown target: $TARGET" >&2
    echo "Use: claude, gemini, or agents" >&2
    exit 1
    ;;
esac

DEST="$BASE/$SKILL_NAME"
mkdir -p "$BASE"

if [[ -e "$DEST" || -L "$DEST" ]]; then
  echo "Destination already exists: $DEST" >&2
  echo "Remove it first if you intend to replace it." >&2
  exit 1
fi

case "$MODE" in
  --copy)
    cp -R "$SOURCE" "$DEST"
    echo "Copied $SKILL_NAME to $DEST"
    ;;
  --link)
    ln -s "$SOURCE" "$DEST"
    echo "Linked $SKILL_NAME -> $DEST"
    ;;
  *)
    echo "Unknown mode: $MODE (use --link or --copy)" >&2
    exit 1
    ;;
esac
