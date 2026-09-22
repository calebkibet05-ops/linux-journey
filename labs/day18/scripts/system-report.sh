#!/usr/bin/env bash

report_dir="$HOME/linux-journey/labs/day18/automation"
mkdir -p "$report_dir"

report="$report_dir/system-report-$(date +%F).txt"

{
echo "===== SYSTEM REPORT ====="
date
echo

echo "Hostname:"
hostname

echo
echo "Kernel:"
uname -r

echo
echo "Uptime:"
uptime

echo
echo "Memory:"
free -h

echo
echo "Disk:"
df -h /

echo
echo "Top CPU Processes:"
ps aux --sort=-%cpu | head -6

} > "$report"

echo "Report saved to $report"
