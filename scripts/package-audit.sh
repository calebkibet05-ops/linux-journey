#!/usr/bin/env bash

set -u

echo "=== PACKAGE AUDIT ==="
echo "Host: $(hostname)"
echo "Time: $(date)"
echo

if command -v dnf >/dev/null 2>&1; then
    manager="dnf"
elif command -v pacman >/dev/null 2>&1; then
    manager="pacman"
else
    echo "No supported package manager found."
    exit 1
fi

echo "Package manager: $manager"
echo

echo "=== INSTALLED PACKAGE COUNT ==="
if [ "$manager" = "dnf" ]; then
    rpm -qa | wc -l
else
    pacman -Q | wc -l
fi

echo
echo "=== AVAILABLE UPDATES ==="
if [ "$manager" = "dnf" ]; then
    dnf list updates 2>/dev/null || true
else
    pacman -Qu 2>/dev/null || true
fi

echo
echo "=== CURL PACKAGE DETAILS ==="
if [ "$manager" = "dnf" ]; then
    rpm -q curl 2>/dev/null || echo "curl is not installed"
else
    pacman -Qi curl 2>/dev/null || echo "curl is not installed"
fi

echo
echo "=== AUDIT COMPLETE ==="
