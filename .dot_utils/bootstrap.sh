#!/usr/bin/env sh

set -e

SCRIPT_DIR="$(dirname "$(realpath "$0")")"

# Check if all dependencies are installed
"$SCRIPT_DIR/utilities/check_dependencies.sh"

# Sourcing aliases, so that 'dotfiles' alias is available
. "$SCRIPT_DIR/zsh/aliases.zsh"

git clone --bare git@github.com:sakeof-capy/dotfiles.git ~/.dotfiles

dotfiles checkout -f
dotfiles config status.showUntrackedFiles no
