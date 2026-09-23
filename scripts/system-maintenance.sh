#!/usr/bin/env bash

set -u

LOG="$HOME/linux-journey/labs/day20/maintenance.log"

{
echo "=============================="
echo "System Maintenance Report"
echo "Time: $(date)"
echo "Host: $(hostname)"
echo

echo "Disk Usage"
df -h
echo

echo "Memory"
free -h
echo

echo "Uptime"
uptime
echo

echo "Top CPU Processes"
ps aux --sort=-%cpu | head -5
echo

echo "Top Memory Processes"
ps aux --sort=-%mem | head -5
echo
} >> "$LOG"

echo "Maintenance completed."
