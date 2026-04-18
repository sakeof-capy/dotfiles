#!/usr/bin/env bash

DEPENDENCIES=$(cat ./dependencies)

for dep in ${DEPENDENCIES}; do
    if ! command -v "$dep" > /dev/null 2>&1; then
        echo "Missing dependency: $dep. Run sudo install_dependencies.sh first."
        exit 1
    fi
done
