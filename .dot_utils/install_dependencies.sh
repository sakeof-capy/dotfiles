#!/usr/bin/env sh

set -e

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
DEPENDENCIES=$(cat ${SCRIPT_DIR}/utilities/dependencies)

missing=""

for dep in $DEPENDENCIES; do
    if ! command -v "$dep" > /dev/null 2>&1; then
        missing="$missing $dep"
    fi
done

if [ -n "$missing" ]; then
    apt-get update
    apt-get install -y "$missing"
else
    echo "All dependencies already available, skipping."
fi
