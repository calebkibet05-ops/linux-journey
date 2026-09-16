#!/usr/bin/env bash

set -u

echo "=== JOURNAL AUDIT ==="
echo "Host: $(hostname)"
echo "Time: $(date)"
echo

echo "=== FAILED SYSTEMD UNITS ==="
failed_units=$(systemctl --failed --no-legend --no-pager)

if [ -z "$failed_units" ]; then
    echo "No failed systemd units detected."
else
    echo "$failed_units"
fi

echo
echo "=== WARNING AND ERROR COUNT (CURRENT BOOT) ==="
warning_count=$(journalctl -b -p warning --no-pager | wc -l)
echo "Warning/error lines: $warning_count"

echo
echo "=== RECENT HIGH-PRIORITY EVENTS ==="
journalctl -b -p warning --no-pager -n 20

echo
echo "=== AUDIT COMPLETE ==="
