#!/usr/bin/env bash

set -u

target="${1:-/etc/hosts}"
warnings=0

echo "=============================="
echo " SELinux Audit"
echo "=============================="
echo "Host: $(hostname)"
echo "Time: $(date)"
echo "Target: $target"
echo

echo "=== SELINUX MODE ==="
if command -v getenforce >/dev/null 2>&1; then
    mode="$(getenforce)"
    echo "Mode: $mode"

    if [ "$mode" = "Disabled" ]; then
        echo "WARNING: SELinux is disabled"
        warnings=$((warnings + 1))
    fi
else
    echo "getenforce is unavailable"
    warnings=$((warnings + 1))
fi

echo
echo "=== SELINUX STATUS ==="
if command -v sestatus >/dev/null 2>&1; then
    sestatus
else
    echo "sestatus is unavailable"
fi

echo
echo "=== TARGET CONTEXT ==="
if [ -e "$target" ]; then
    ls -Zd "$target"
else
    echo "Target does not exist"
    exit 1
fi

echo
echo "=== EXPECTED CONTEXT ==="
if command -v matchpathcon >/dev/null 2>&1; then
    matchpathcon "$target" || true
else
    echo "matchpathcon is unavailable"
fi

echo
echo "=== RECENT AVC DENIALS ==="
if command -v ausearch >/dev/null 2>&1; then
    denial_output="$(sudo ausearch -m AVC -ts recent 2>/dev/null || true)"
    if [ -n "$denial_output" ]; then
        echo "$denial_output"
        warnings=$((warnings + 1))
    else
        echo "No recent AVC denials found."
    fi
else
    echo "ausearch is unavailable"
fi

echo
echo "=== FINAL STATUS ==="
if [ "$warnings" -eq 0 ]; then
    echo "STATUS: SELINUX AUDIT COMPLETE"
    exit 0
else
    echo "STATUS: ATTENTION REQUIRED"
    echo "Warnings detected: $warnings"
    exit 1
fi
