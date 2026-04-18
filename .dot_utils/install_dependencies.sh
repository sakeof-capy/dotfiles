#!/usr/bin/env bash

set -eo pipefail

DEPENDENCIES=$(cat ./utilities/dependencies)

apt update
apt install -y ${DEPENDENCIES}
