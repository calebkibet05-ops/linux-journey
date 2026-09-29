#!/usr/bin/env bash
#!/usr/bin/env bash

set -u

warnings=0

echo "=============================="
echo " Firewall and Exposure Audit"
echo "=============================="
echo "Host: $(hostname)"
echo "Time: $(date)"
echo

echo "=== LISTENING SOCKETS ==="
ss -tuln

echo
echo "=== FIREWALL FRAMEWORK ==="

if command -v firewall-cmd >/dev/null 2>&1 && systemctl is-active --quiet firewalld; then
    firewall_type="firewalld"
    echo "Active firewall: firewalld"

    echo
    echo "=== ACTIVE ZONES ==="
    sudo firewall-cmd --get-active-zones

    echo
    echo "=== ALLOWED SERVICES ==="
    sudo firewall-cmd --list-services

    echo
    echo "=== ALLOWED PORTS ==="
    sudo firewall-cmd --list-ports

    echo
    echo "=== FIREWALL STATE ==="
    sudo firewall-cmd --state
elif command -v nft >/dev/null 2>&1 && systemctl is-active --quiet nftables; then
    firewall_type="nftables"
    echo "Active firewall: nftables"

    echo
    echo "=== NFTABLES RULESET SUMMARY ==="
    sudo nft list ruleset
else
    firewall_type="none-or-unknown"
    echo "WARNING: no active supported firewall framework detected"
    warnings=$((warnings + 1))
fi

echo
echo "=== SSH HARDENING CHECK ==="

if command -v sshd >/dev/null 2>&1; then
    sshd -T 2>/dev/null \
      | grep -Ei 'permitrootlogin|passwordauthentication|pubkeyauthentication|maxauthtries' \
      || echo "Unable to read effective SSH settings"
else
    echo "sshd not installed"
fi

echo
echo "=== FINAL STATUS ==="

if [ "$warnings" -eq 0 ]; then
    echo "STATUS: FIREWALL AUDIT COMPLETE"
    exit 0
else
    echo "STATUS: ATTENTION REQUIRED"
    echo "Warnings detected: $warnings"
    exit 1
fi
