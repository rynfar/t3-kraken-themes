#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEMES_DIR="${HOME}/.t3/userdata/themes"

mkdir -p "${THEMES_DIR}"
cp "${REPO_DIR}"/themes/*.json "${THEMES_DIR}/"
echo "Installed themes into ${THEMES_DIR}:"
ls -1 "${REPO_DIR}"/themes/*.json | xargs -n1 basename
