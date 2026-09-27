#!/usr/bin/env bash

set -u

target_pid="${1:-}"

echo "=============================="
echo " Process and Service Audit"
echo "=============================="
echo "Host: $(hostname)"
echo "Time: $(date)"
echo

echo "=== LOAD ==="
uptime

echo
echo "=== TOP CPU PROCESSES ==="
ps -eo pid,ppid,user,%cpu,%mem,stat,cmd --sort=-%cpu | head -10

echo
echo "=== TOP MEMORY PROCESSES ==="
ps -eo pid,ppid,user,%cpu,%mem,stat,cmd --sort=-%mem | head -10

echo
echo "=== PROCESS STATE SUMMARY ==="
ps -eo stat= | cut -c1 | sort | uniq -c | sort -k2

echo
echo "=== FAILED SERVICES ==="
failed_units="$(systemctl --failed --no-legend --no-pager || true)"

if [ -n "$failed_units" ]; then
    echo "$failed_units"
else
    echo "No failed services detected."
fi

if [ -n "$target_pid" ]; then
    echo
    echo "=== TARGET PROCESS ==="
    echo "PID: $target_pid"

    if ps -p "$target_pid" >/dev/null 2>&1; then
        ps -o pid,ppid,user,%cpu,%mem,stat,ni,pri,etime,cmd -p "$target_pid"
    else
        echo "Process not found."
        exit 1
    fi
fi

echo
echo "=== AUDIT COMPLETE ==="
