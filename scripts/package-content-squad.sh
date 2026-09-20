#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PLUGIN="$ROOT/plugins/figueira-content-squad"
OUT_DIR="${1:-$ROOT/dist}"
OUT="$OUT_DIR/Figueira-Content-Squad-OpenAI-1.1.0.zip"

mkdir -p "$OUT_DIR"
rm -f "$OUT"

python3 - "$PLUGIN" <<'PY'
import json, os, struct, sys
root=sys.argv[1]
manifest_path=os.path.join(root,"plugin.json")
with open(manifest_path,encoding="utf-8") as f:
    m=json.load(f)
assert m["name"]=="figueira-content-squad"
assert m["version"]=="1.1.0"
ui=m["extensions"]["com.openai"]["interface"]
assert len(ui["displayName"]) <= 30
assert len(ui["shortDescription"]) <= 30
assert len(ui.get("defaultPrompt",[])) <= 3
for prompt in ui.get("defaultPrompt",[]):
    assert len(prompt) <= 128
for field in ("logo","composerIcon"):
    rel=ui[field]
    assert rel.startswith("./")
    path=os.path.join(root,rel[2:])
    assert os.path.isfile(path), (field,path)
    assert os.path.getsize(path) <= 5*1024*1024
    data=open(path,"rb").read(24)
    assert data[:8] == b"\x89PNG\r\n\x1a\n"
    w,h=struct.unpack(">II",data[16:24])
    assert w==h and 48 <= w <= 4096, (field,w,h)
skills=["setup","kotler","hormozi","ogilvy","davinci"]
for s in skills:
    assert os.path.isfile(os.path.join(root,"skills",s,"SKILL.md")), s
tests=open(os.path.join(root,"submission","TEST-CASES.md"),encoding="utf-8").read()
assert tests.count("### ") == 8
print("PLUGIN_VALIDATION=PASS")
print("DISPLAY_NAME_LEN=",len(ui["displayName"]))
print("SHORT_DESCRIPTION_LEN=",len(ui["shortDescription"]))
print("STARTER_PROMPTS=",len(ui["defaultPrompt"]))
PY

hits="$(grep -RIl --exclude-dir=.git -E 'Claude\.ai|/mnt/user-data' "$PLUGIN" || true)"
if [ -n "$hits" ]; then
  echo "Provider-specific legacy references found:" >&2
  printf '%s\n' "$hits" >&2
  exit 1
fi

(
  cd "$PLUGIN"
  zip -qr "$OUT" .
)

echo "PACKAGE=$OUT"
unzip -l "$OUT" | tail -n 3
