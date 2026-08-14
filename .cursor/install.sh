#!/usr/bin/env bash
# Idempotent Cloud Agent install script for the monkeylang.org Hugo site.
# Installs the pinned Hugo Extended release (SCSS support via libsass) if it is
# missing or the wrong version. Safe to re-run.
set -euo pipefail

# Keep in sync with HUGO_VERSION in netlify.toml so local builds match production.
HUGO_VERSION="0.157.0"
INSTALL_DIR="/usr/local/bin"

current_version() {
  command -v hugo >/dev/null 2>&1 || return 1
  hugo version 2>/dev/null | grep -oE 'v[0-9]+\.[0-9]+\.[0-9]+' | head -n1 | sed 's/^v//'
}

needs_install=1
if installed="$(current_version)"; then
  if [ "${installed}" = "${HUGO_VERSION}" ] && hugo version | grep -q 'extended'; then
    needs_install=0
  fi
fi

if [ "${needs_install}" -eq 1 ]; then
  arch="$(uname -m)"
  case "${arch}" in
    x86_64) hugo_arch="linux-amd64" ;;
    aarch64 | arm64) hugo_arch="linux-arm64" ;;
    *) echo "Unsupported architecture: ${arch}" >&2; exit 1 ;;
  esac

  tarball="hugo_extended_${HUGO_VERSION}_${hugo_arch}.tar.gz"
  url="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${tarball}"
  tmpdir="$(mktemp -d)"
  trap 'rm -rf "${tmpdir}"' EXIT

  echo "Installing Hugo Extended ${HUGO_VERSION} (${hugo_arch})..."
  curl -fsSL -o "${tmpdir}/${tarball}" "${url}"
  tar -xzf "${tmpdir}/${tarball}" -C "${tmpdir}"
  sudo install "${tmpdir}/hugo" "${INSTALL_DIR}/hugo"
else
  echo "Hugo Extended ${HUGO_VERSION} already installed; skipping download."
fi

hugo version

# Verify the production build succeeds so setup fails loudly on a broken checkout.
cd "$(dirname "$0")/.."
hugo --gc --minify
echo "Install complete: production build succeeded."
