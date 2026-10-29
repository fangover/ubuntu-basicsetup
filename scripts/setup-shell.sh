#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
aliases="$(cat "$script_dir/aliases.sh")"
existing=""

if [[ -f "$HOME/.bash_aliases" ]]; then
    existing="$(cat "$HOME/.bash_aliases")"
fi

if [[ -n "$aliases" && "$existing" != *"$aliases"* ]]; then
    printf '\n%s\n' "$aliases" >> "$HOME/.bash_aliases"
fi