#!/usr/bin/env bash

echo "=== Omarchy System Check ==="
echo

echo "Hostname:"
hostname
echo

echo "Kernel:"
uname -r
echo

echo "Current User:"
whoami
echo

echo "Uptime:"
uptime
echo

echo "Root Filesystem:"
df -h /
echo

echo "Memory:"
free -h
echo

echo "Important Services:"
for service in NetworkManager systemd-journald systemd-logind; do
    printf "%-22s" "$service"
    systemctl is-active "$service" 2>&1
done
