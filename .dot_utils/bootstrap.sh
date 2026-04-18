#!/usr/bin/env bash

set -eo pipefail

# Check if all dependencies are installed
source <(curl -s https://raw.githubusercontent.com/sakeof-capy/dotfiles/master/utilities/check_dependencies.sh)

# Sourcing aliases, so that 'dotfiles' alias is available
source <(curl -s https://raw.githubusercontent.com/sakeof-capy/dotfiles/master/.zsh/aliases.zsh)

git clone --bare git@github.com:sakeof-capy/dotfiles.git ~/.dotfiles

dotfiles checkout -f
dotfiles config status.showUntrackedFiles no
