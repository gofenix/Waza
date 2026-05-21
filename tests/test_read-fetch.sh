#!/usr/bin/env bash
# Smoke for /read fetch.sh privacy-first cascade.
# - Local extractor handles a simple HTML page (no third-party request).
# - --use-proxy flag is recognized (we do not actually call defuddle/jina
#   in the smoke test; tier=local will succeed on example.com and we never
#   reach the proxy tiers).
# - Structured stderr lines are emitted.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/test_helpers.sh"

if [ "${WAZA_SMOKE_OFFLINE:-0}" = "1" ]; then
  echo "read fetch smoke: skipped (WAZA_SMOKE_OFFLINE=1)"
  exit 0
fi

tmpdir=$(make_tmpdir)

# Case 1: default invocation extracts content with structured stderr.
bash "$ROOT/skills/read/scripts/fetch.sh" "https://example.com" \
  >"$tmpdir/out.md" 2>"$tmpdir/err.log"
grep -q "Example Domain" "$tmpdir/out.md"
grep -q "tier=local status=ok" "$tmpdir/err.log"

# Case 2: --use-proxy flag is accepted (and local tier still tried first).
bash "$ROOT/skills/read/scripts/fetch.sh" --use-proxy "https://example.com" \
  >"$tmpdir/proxy-out.md" 2>"$tmpdir/proxy-err.log"
grep -q "Example Domain" "$tmpdir/proxy-out.md"
grep -q "tier=local status=ok" "$tmpdir/proxy-err.log"

# Case 3: fetch_local.py runnable directly with --prefer stdlib.
python3 "$ROOT/skills/read/scripts/fetch_local.py" --prefer stdlib \
  "https://example.com" >"$tmpdir/local.md" 2>"$tmpdir/local.err"
grep -q "Example Domain" "$tmpdir/local.md"
grep -q "extractor=stdlib" "$tmpdir/local.err"

# Case 4: a clearly unreachable URL fails with structured stderr.
if bash "$ROOT/skills/read/scripts/fetch.sh" "http://invalid.localhost.invalid/" \
     >"$tmpdir/dead.md" 2>"$tmpdir/dead.err"; then
  echo "fetch.sh should fail on unreachable URL"
  exit 1
fi
grep -q "status=fail" "$tmpdir/dead.err"

echo "read fetch smoke: ok"
