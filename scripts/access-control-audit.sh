#!/usr/bin/env bash

set -u

target="${1:-/srv/syslab}"

echo "=== ACCESS CONTROL AUDIT ==="
echo "Target: $target"
echo "Host: $(hostname)"
echo "Time: $(date)"
echo

if [ ! -e "$target" ]; then
    echo "ERROR: target does not exist"
    exit 1
fi

echo "=== BASIC DETAILS ==="
ls -ld "$target"
stat "$target"
echo

if [ -d "$target" ]; then
    echo "=== CONTENTS ==="
    find "$target" -maxdepth 1 -mindepth 1 -printf '%M %u:%g %p\n' 2>/dev/null
    echo
fi

echo "=== ACL DETAILS ==="
if command -v getfacl >/dev/null 2>&1; then
    getfacl "$target"
else
    echo "getfacl is not installed"
fi

echo
echo "=== CURRENT UMASK ==="
umask
umask -S

echo
echo "=== AUDIT COMPLETE ==="
