#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

mapfile -t packages < <(grep -vE '^[[:space:]]*(#|$)' "$repo_dir/packages.txt")
sudo apt update
if (( ${#packages[@]} )); then
    sudo apt install "${packages[@]}"
fi
