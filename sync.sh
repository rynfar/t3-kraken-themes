#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEMES_DIR="${HOME}/.t3/userdata/themes"

cp "${THEMES_DIR}"/kraken-*.json "${REPO_DIR}/themes/"
echo "Synced kraken-* themes from ${THEMES_DIR} into ${REPO_DIR}/themes/."
git -C "${REPO_DIR}" status -s
