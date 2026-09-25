#!/usr/bin/env bash

echo "===== DAILY MAINTENANCE REPORT ====="
echo "Time: $(date)"
echo

echo "Hostname:"
hostname

echo
echo "Kernel:"
uname -r

echo
echo "Disk Usage:"
df -h /

echo
echo "Memory:"
free -h

echo
echo "Top CPU Processes:"
ps aux --sort=-%cpu | head -5

echo
echo "===== COMPLETE ====="
