# Day 11 – SSH Administration on Omarchy

## Objective

Learn how OpenSSH provides secure remote access and how to troubleshoot the SSH service safely.

## Commands Used

```bash
ssh -V
pacman -Q openssh
systemctl status sshd
systemctl is-active sshd
systemctl is-enabled sshd
ss -tuln | grep ':22'
sudo ss -tulpn | grep ssh
sudo sshd -t
journalctl -u sshd
ssh-keygen -t ed25519
