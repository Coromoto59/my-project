#!/bin/bash
DATE=$(date +%Y-%m-%d_%H-%M)
DEST="$HOME/backups/backup_$DATE"
mkdir -p "$DEST"
rsync -avh "$HOME/data/" "$DEST/"

