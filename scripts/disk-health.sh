#!/usr/bin/env bash

set -u

echo "=== Disk Health Check ==="
echo

echo "Hostname:"
hostname
echo

echo "Root Filesystem:"
df -h /
echo

echo "Root Inodes:"
df -ih /
echo

echo "Block Devices:"
lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS
echo

usage=$(df --output=pcent / | tail -1 | tr -dc '0-9')
echo "Root usage: ${usage}%"

if [ "$usage" -ge 90 ]; then
    echo "CRITICAL: root filesystem usage is 90% or higher"
    exit 2
elif [ "$usage" -ge 80 ]; then
    echo "WARNING: root filesystem usage is 80% or higher"
    exit 1
else
    echo "OK: root filesystem usage is below 80%"
    exit 0
fi
