#!/usr/bin/env sh

set -e

BACKUP_ID=$(date +%Y%m%d_%H%M%S)
SCRIPT_DIR="$(dirname "$(realpath "$0")")"
REMOTE_URL=$(git -C "$SCRIPT_DIR" remote get-url origin)
BRANCH=$(git -C "$SCRIPT_DIR" rev-parse --abbrev-ref HEAD)

dotfiles() {
    git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" "$@"
}

backup() {
    "$SCRIPT_DIR/utilities/backup.sh" "$BACKUP_ID" "$@"
}

# Check if all dependencies are installed
"$SCRIPT_DIR/utilities/check_dependencies.sh"

# Backup and clone dotfiles repo
backup "$HOME/.dotfiles"
git clone --bare "$REMOTE_URL" "$HOME/.dotfiles"

# Back up all files that dotfiles would overwrite
TRACKED=$(dotfiles ls-tree -r "$BRANCH" --name-only)
for file in $TRACKED; do
    backup "$HOME/$file"
done

dotfiles checkout -f "$BRANCH"
dotfiles config status.showUntrackedFiles no

echo "Done! Run 'exec zsh' or re-login to start using the installed shell."
