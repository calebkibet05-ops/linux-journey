#!/usr/bin/env bash

set -u

target_mount="${1:-/}"
warning_percent="${2:-80}"
warnings=0

echo "=============================="
echo " Storage Health Report"
echo "=============================="
echo "Host: $(hostname)"
echo "Time: $(date)"
echo "Target mount: $target_mount"
echo

if ! mountpoint -q "$target_mount"; then
    echo "WARNING: $target_mount is not a mount point"
    warnings=$((warnings + 1))
else
    echo "OK: $target_mount is a valid mount point"
fi

echo
echo "=== SPACE USAGE ==="
df -h "$target_mount"

usage_percent="$(df -P "$target_mount" | awk 'NR==2 {gsub("%","",$5); print $5}')"

if [ -n "$usage_percent" ] && [ "$usage_percent" -ge "$warning_percent" ]; then
    echo "WARNING: space usage is ${usage_percent}%"
    warnings=$((warnings + 1))
else
    echo "OK: space usage is ${usage_percent}%"
fi

echo
echo "=== INODE USAGE ==="
df -i "$target_mount"

inode_percent="$(df -Pi "$target_mount" | awk 'NR==2 {gsub("%","",$5); print $5}')"

if [ -n "$inode_percent" ] && [ "$inode_percent" -ge "$warning_percent" ]; then
    echo "WARNING: inode usage is ${inode_percent}%"
    warnings=$((warnings + 1))
else
    echo "OK: inode usage is ${inode_percent}%"
fi

echo
echo "=== MOUNT DETAILS ==="
findmnt "$target_mount"

echo
echo "=== LARGEST DIRECTORIES ==="
du -xh -d 1 "$target_mount" 2>/dev/null \
  | sort -h \
  | tail -n 10

echo
echo "=== DELETED-BUT-OPEN FILES ==="
if command -v lsof >/dev/null 2>&1; then
    deleted_open="$(lsof +L1 2>/dev/null || true)"
    if [ -n "$deleted_open" ]; then
        echo "$deleted_open"
        warnings=$((warnings + 1))
    else
        echo "None detected."
    fi
else
    echo "lsof is not installed."
fi

echo
echo "=== FINAL STATUS ==="
if [ "$warnings" -eq 0 ]; then
    echo "STATUS: STORAGE HEALTHY"
    exit 0
else
    echo "STATUS: STORAGE NEEDS INVESTIGATION"
    echo "Warnings detected: $warnings"
    exit 1
fi
