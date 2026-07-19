#!/usr/bin/env bash
#
# sync-upstream.sh — Fetch latest updates from msitarzewski/agency-agents,
# apply Genixbit Agents branding, validate consistency, and push to origin.
#
# Usage:
#   ./scripts/sync-upstream.sh
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

cd "$REPO_ROOT"

UPSTREAM_URL="https://github.com/msitarzewski/agency-agents.git"

echo "==> 1. Ensuring git remote 'upstream' is configured..."
if ! git remote | grep -q "^upstream$"; then
  git remote add upstream "$UPSTREAM_URL"
  echo "Added upstream remote: $UPSTREAM_URL"
else
  git remote set-url upstream "$UPSTREAM_URL"
fi

echo "==> 2. Fetching latest changes from upstream..."
git fetch upstream main

echo "==> 3. Merging upstream changes..."
# Merge upstream while preserving local custom features & branding overrides
git merge upstream/main -X ours --no-edit || {
  echo "WARNING: Merge conflicts encountered. Resolving with local precedence..."
  git checkout --ours .
  git add .
  git commit -m "sync: merge upstream/main with Genixbit Agents precedence"
}

echo "==> 4. Enforcing Genixbit Agents branding & converting integrations..."
bash scripts/rebrand.sh

echo "==> 5. Staging and committing changes..."
git add .
if ! git diff --cached --quiet; then
  git commit -m "sync: update roster from upstream and enforce Genixbit Agents branding"
else
  echo "No new changes to commit."
fi

echo "==> 6. Pushing to origin main..."
git push origin main

echo ""
echo "SUCCESS: Upstream changes synced, rebranded, and pushed to origin main!"
