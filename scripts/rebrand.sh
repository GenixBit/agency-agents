#!/usr/bin/env bash
#
# rebrand.sh — Enforce Genixbit Agents branding across docs, configs, and release assets
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$REPO_ROOT"

echo "==> 1. Enforcing Genixbit Agents branding..."

# Fix any lingering upstream URLs in docs
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' 's|msitarzewski/agency-agents-app|genixbit/agency-agents|g' README.md CONTRIBUTING.md 2>/dev/null || true
  sed -i '' 's|msitarzewski/agency-agents/agency-agents|genixbit/agency-agents/genixbit-agents|g' README.md 2>/dev/null || true
else
  sed -i 's|msitarzewski/agency-agents-app|genixbit/agency-agents|g' README.md CONTRIBUTING.md 2>/dev/null || true
  sed -i 's|msitarzewski/agency-agents/agency-agents|genixbit/agency-agents/genixbit-agents|g' README.md 2>/dev/null || true
fi

echo "==> 2. Running repository validation checks..."
bash scripts/lint-agents.sh
bash scripts/check-divisions.sh
bash scripts/check-tools.sh
bash scripts/check-runbooks.sh
python3 scripts/check-hermes-plugin.py

echo "==> 3. Converting tool integrations..."
bash scripts/convert.sh

echo ""
echo "SUCCESS: Branding enforced, validations passed, and integrations converted."
