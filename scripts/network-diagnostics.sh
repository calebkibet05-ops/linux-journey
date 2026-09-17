#!/usr/bin/env bash

set -u

target="${1:-example.com}"

echo "=== NETWORK DIAGNOSTICS ==="
echo "Host: $(hostname)"
echo "Time: $(date)"
echo "Target: $target"
echo

echo "=== DEFAULT ROUTE ==="
ip route | awk '$1=="default" {print}'
echo

echo "=== ACTIVE INTERFACES ==="
ip -brief addr
echo

echo "=== DNS LOOKUP ==="
if resolvectl query "$target" >/tmp/network-dns-check.$$ 2>&1; then
    cat /tmp/network-dns-check.$$
    dns_ok=1
else
    cat /tmp/network-dns-check.$$
    dns_ok=0
fi
rm -f /tmp/network-dns-check.$$
echo

echo "=== HTTPS CHECK ==="
if curl -I --max-time 10 -sS "https://$target" >/tmp/network-http-check.$$ 2>&1; then
    head -n 1 /tmp/network-http-check.$$
    http_ok=1
else
    cat /tmp/network-http-check.$$
    http_ok=0
fi
rm -f /tmp/network-http-check.$$
echo

echo "=== LISTENING TCP/UDP PORTS ==="
ss -tuln
echo

if [ "$dns_ok" -eq 1 ] && [ "$http_ok" -eq 1 ]; then
    echo "STATUS: NETWORKING LOOKS HEALTHY"
    exit 0
else
    echo "STATUS: NETWORKING NEEDS INVESTIGATION"
    exit 1
fi
