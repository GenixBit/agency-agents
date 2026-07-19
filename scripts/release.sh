#!/usr/bin/env bash
#
# release.sh — One-command automated release script for Genixbit Agents
#
# Usage:
#   ./scripts/release.sh v0.3.0
#   ./scripts/release.sh v1.0.0 "Release description message"
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$REPO_ROOT"

TAG="${1:-}"
MSG="${2:-Release $TAG: Genixbit Agents Roster}"

if [[ -z "$TAG" ]]; then
  echo "Usage: ./scripts/release.sh <tag> [message]"
  echo "Example: ./scripts/release.sh v0.3.0"
  exit 1
fi

if [[ ! "$TAG" =~ ^v[0-9]+\.[0-9]+\.[0-9]+.*$ ]]; then
  echo "ERROR: Tag must follow semver format (e.g. v0.3.0 or v1.0.0)"
  exit 1
fi

echo "==> 1. Running pre-flight checks..."
bash scripts/lint-agents.sh
bash scripts/check-divisions.sh
bash scripts/check-tools.sh
bash scripts/check-runbooks.sh
python3 scripts/check-hermes-plugin.py

echo "==> 2. Converting tool integrations..."
bash scripts/convert.sh

echo "==> 3. Creating and pushing release tag '$TAG'..."
git tag -a "$TAG" -m "$MSG"
git push origin "$TAG"

echo ""
echo "SUCCESS: Tag '$TAG' created and pushed to origin."
echo "GitHub Release workflow will publish the release artifacts automatically on genixbit/agency-agents."
