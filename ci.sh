#!/usr/bin/env bash
# bupha entry point (runner.kind = "script", cmd = "./ci.sh").
# The gate itself lives in scripts/hnl-gate.sh so it can be run by hand.
set -euo pipefail

# Skeleton repos have the layout but no implementation yet — a skipped gate is
# honest; a failing one would just be noise. A committed specs/ dir means the
# gate has generated output to regen + cover even when src/ holds no .hnl.
if ! find src -name '*.hnl' 2>/dev/null | grep -q . && \
   ! find specs -type f 2>/dev/null | grep -q .; then
  echo "no .hnl sources under src/ and no specs/ - gate skipped"
  exit 0
fi

exec ./scripts/hnl-gate.sh "$@"
