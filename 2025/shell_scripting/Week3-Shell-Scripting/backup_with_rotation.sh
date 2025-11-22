#!/bin/bash
# ------------------------------------------------------------
# Directory Backup with Rotation
# Creates timestamped backups and retains only the last 3.
# ------------------------------------------------------------

# Exit on any error
set -e

# Check for directory argument
if [ -z "$1" ]; then
    echo "Usage: $0 /path/to/directory"
    exit 1
fi

target_dir="$1"
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_dir="$target_dir/backup_$timestamp"

# Create backup directory
mkdir -p "$backup_dir"

# Copy all files into the backup directory
cp -r "$target_dir"/* "$backup_dir" 2>/dev/null || true
echo " Backup created: $backup_dir"

# Backup rotation logic (keep only last 3)
cd "$target_dir"
backups=( $(ls -dt backup_* 2>/dev/null) )
count=${#backups[@]}

if (( count > 3 )); then
    for ((i=3; i<count; i++)); do
        rm -rf "${backups[$i]}"
        echo "Old backup removed: ${backups[$i]}"
    done
fi

