#!/usr/bin/env bash

set -u

echo "=== SYSTEM PERFORMANCE CHECK ==="
echo "Host: $(hostname)"
echo "Time: $(date)"
echo

echo "=== UPTIME ==="
uptime
echo

echo "=== MEMORY ==="
free -h
echo

echo "=== TOP CPU PROCESSES ==="
ps aux --sort=-%cpu | head -10
echo

echo "=== TOP MEMORY PROCESSES ==="
ps aux --sort=-%mem | head -10
echo

echo "=== ZOMBIE PROCESSES ==="
zombies=$(ps -eo state= | awk '$1=="Z"' | wc -l)

if [ "$zombies" -eq 0 ]; then
    echo "No zombie processes detected."
else
    echo "Zombie processes detected: $zombies"
    ps -eo pid,ppid,state,comm | awk '$3=="Z"'
fi

echo
echo "=== CHECK COMPLETE ==="
