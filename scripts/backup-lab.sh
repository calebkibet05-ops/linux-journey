
#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

SOURCE_DIR="$ROOT_DIR/labs/day29/restore-test"
BACKUP_DIR="$ROOT_DIR/labs/day29/backups"
EVIDENCE_DIR="$ROOT_DIR/labs/day29/evidence"

TIMESTAMP="$(date +%Y%m%d-%H%M%S)"
ARCHIVE="$BACKUP_DIR/day29-backup-$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR" "$EVIDENCE_DIR"

if [[ ! -d "$SOURCE_DIR" ]]; then
    echo "ERROR: Source directory does not exist: $SOURCE_DIR"
    exit 1
fi

if ! find "$SOURCE_DIR" -type f -print -quit | grep -q .; then
    echo "ERROR: Source directory contains no files."
    exit 1
fi

echo "Starting backup..."
echo "Source: $SOURCE_DIR"
echo "Archive: $ARCHIVE"

tar -czf "$ARCHIVE" -C "$SOURCE_DIR" .

# Verify that the archive can be listed.
tar -tzf "$ARCHIVE" > /dev/null

# Store the checksum alongside the archive.
sha256sum "$ARCHIVE" > "$ARCHIVE.sha256"

# Verify the checksum immediately.
sha256sum -c "$ARCHIVE.sha256"

# Record the location of the latest backup.
printf '%s\n' "$ARCHIVE" \
    > "$EVIDENCE_DIR/latest-backup-path.txt"

echo "Backup completed successfully."
echo "Archive: $ARCHIVE"
echo "Checksum: $ARCHIVE.sha256"

