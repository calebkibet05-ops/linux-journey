#!/usr/bin/env bash

echo "=== SSH Audit ==="
echo

echo "Hostname:"
hostname
echo

echo "SSH Client:"
ssh -V 2>&1
echo

echo "OpenSSH Package:"
pacman -Q openssh 2>&1
echo

echo "SSH Service:"
systemctl is-active sshd 2>&1
echo

echo "SSH Enabled at Boot:"
systemctl is-enabled sshd 2>&1
echo

echo "Listening on Port 22:"
ss -tuln | grep ':22' || echo "Port 22 is not listening"
echo

echo "Configuration Check:"
if sudo sshd -t 2>/dev/null; then
    echo "Configuration syntax is valid"
else
    echo "Configuration syntax check failed"
fi
echo

echo "Recent SSH Logs:"
sudo journalctl -u sshd -n 10 --no-pager
