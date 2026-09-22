#!/usr/bin/env bash

set -u

source_dir="${1:-labs/day17/backup-source}"
backup_dir="${2:-backups}"
timestamp=$(date +%Y%m%d-%H%M%S)

archive="${backup_dir}/project-backup-${timestamp}.tar.gz"
checksum="${archive}.sha256"

echo "=== PROJECT BACKUP ==="
echo "Source: $source_dir"
echo "Destination: $archive"
echo

if [ ! -d "$source_dir" ]; then
    echo "ERROR: source directory does not exist"
    exit 1
fi

mkdir -p "$backup_dir"

tar -czf "$archive" "$source_dir"

sha256sum "$archive" > "$checksum"

echo "Backup created."
echo "Checksum created."

echo
echo "=== VERIFYING ARCHIVE ==="

if tar -tzf "$archive" >/dev/null; then
    echo "Archive verification: PASS"
else
    echo "Archive verification: FAIL"
    exit 1
fi

echo
echo "Backup completed successfully."
