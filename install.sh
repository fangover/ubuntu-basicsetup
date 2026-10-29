#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

run_step() {
    local description="$1"
    local script="$2"
    local status

    printf '\n==> %s\n' "$description"
    if bash "$repo_dir/scripts/$script"; then
        printf '[OK] %s\n' "$description"
    else
        status=$?
        printf '[FAILED] %s (exit %s)\n' "$description" "$status" >&2
        exit "$status"
    fi
}

run_step 'Install Ubuntu packages' install-packages.sh
run_step 'Create project folders' setup-folders.sh
run_step 'Set up Bash aliases' setup-shell.sh

printf '\nSetup done.\n'
