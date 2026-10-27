#!/usr/bin/env bash
# OmniCaster: instalar en modo quiosco (Debian 12 / Ubuntu 22.04-24.04).
# Uso:  wget matiormx.github.io/q && sudo bash q
# Descarga siempre la ultima version del instalador y la ejecuta.
set -euo pipefail
URL="https://raw.githubusercontent.com/matiormx/radio-automation-software/main/scripts/linux/instalar-quiosco.sh"
TMP="$(mktemp)"
if command -v curl >/dev/null 2>&1; then
  curl -fsSL "$URL" -o "$TMP"
else
  wget -qO "$TMP" "$URL"
fi
exec bash "$TMP" "$@"
