
#!/usr/bin/env bash

set -u

WARN=0
DISK_WARNING=85

echo "=================================="
echo " Linux System Health Monitor"
echo "=================================="
echo "Timestamp: $(date '+%Y-%m-%d %H:%M:%S')"
echo "Hostname:  $(hostname)"
echo

echo "=== Uptime and Load ==="
uptime
echo

echo "=== Memory ==="
free -h
echo

echo "=== Disk Usage ==="
df -hP

while read -r filesystem size used available percent mountpoint; do
    [[ "$percent" =~ ^[0-9]+%$ ]] || continue

    usage=${percent%\%}

    if (( usage >= DISK_WARNING )); then
        echo "WARNING: $mountpoint is ${usage}% full"
        WARN=1
    fi
done < <(df -hP | tail -n +2)

echo
echo "=== Top CPU Processes ==="
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

echo
echo "=== Failed Systemd Units ==="
systemctl --failed --no-pager

echo
if (( WARN )); then
    echo "RESULT: Disk usage warning detected."
    exit 1
else
    echo "RESULT: No disk usage threshold warnings detected."
    exit 0
fi

