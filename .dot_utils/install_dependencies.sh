#!/usr/bin/env sh

set -e

SCRIPT_DIR="$(dirname "$(realpath "$0")")"
DEPENDENCIES=$(cat ${SCRIPT_DIR}/utilities/dependencies)

apt update
apt install -y ${DEPENDENCIES}
