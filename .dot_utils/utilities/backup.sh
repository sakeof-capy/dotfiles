#!/usr/bin/env sh
set -e

BACKUP_DIR="$HOME/.dotfiles-backup-$1"
shift

if [ "$#" -eq 0 ]; then
    echo "Usage: backup.sh <backup_id> <file_or_dir> [file_or_dir ...]" >&2
    exit 1
fi

for target in "$@"; do
    if [ -e "$target" ]; then
        relative="${target#"$HOME/"}"
        mkdir -p "$BACKUP_DIR/$(dirname "$relative")"
        mv "$target" "$BACKUP_DIR/$relative"
        echo "Backed up $target to $BACKUP_DIR/$relative"
    else
        echo "$target does not exist, skipping."
    fi
done