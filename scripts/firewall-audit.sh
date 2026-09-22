#!/usr/bin/env bash

echo "=== FIREWALL AUDIT ==="
echo "Host: $(hostname)"
echo "Time: $(date)"
echo

echo "=== Firewall Status ==="
if systemctl is-active --quiet nftables
then
    echo "nftables: ACTIVE"
else
    echo "nftables: INACTIVE"
fi

echo
echo "=== Listening Ports ==="
ss -tuln

echo
echo "=== Port Count ==="
ss -tuln | grep LISTEN | wc -l

echo
echo "=== Failed Services ==="
systemctl --failed --no-pager

echo
echo "=== Audit Complete ==="
