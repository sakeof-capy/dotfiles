#!/usr/bin/env sh

set -e

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
DEPENDENCIES=$(cat ${SCRIPT_DIR}/dependencies)

for dep in ${DEPENDENCIES}; do
    if ! command -v "$dep" > /dev/null 2>&1; then
        echo "Missing dependency: $dep. Run sudo install_dependencies.sh first."
        exit 1
    fi
done

echo "All dependencies satisfied."
