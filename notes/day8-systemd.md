# Day 8 – Systemd & Service Management

## Objective

Learn how Fedora manages services using systemd.

## Commands Used

```bash
systemctl --version
systemctl list-units --type=service --state=running
systemctl status NetworkManager
systemctl is-active NetworkManager
systemctl is-enabled NetworkManager
systemctl get-default
systemctl --failed
journalctl -u NetworkManager -n 15 --no-pager
```

## Key Concepts

- systemd manages background services.
- Active means running now.
- Enabled means starts at boot.
- `journalctl` is used to inspect service logs.
- `systemctl status` is the first troubleshooting command.

## Lab Results

- Default Target: (record yours)
- NetworkManager Active: (Yes/No)
- NetworkManager Enabled: (Yes/No)
- Failed Services: (record result)

## Troubleshooting Workflow

1. Check service status.
2. Verify active state.
3. Verify boot state.
4. Read logs.
5. Check failed services.
6. Restart only after identifying the issue.
