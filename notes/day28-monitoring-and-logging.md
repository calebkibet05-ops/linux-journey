# Day 28: Infrastructure Monitoring, Logging and Alerting

## Objectives
- Monitor CPU load, memory, disk, and network state.
- Inspect systemd services and journal logs.
- Identify resource-intensive processes.
- Automate basic host health checks.

## Environment
- OS: Omarchy (Arch Linux)
- Init and service manager: systemd
- Monitoring language: Bash

## Commands practised
- `uptime`
- `free -h`
- `df -h`
- `ps`
- `ip`
- `ss`
- `systemctl`
- `journalctl`

## Automation
Created `scripts/system-health-monitor.sh`.

## Results
- Memory check: [record result]
- Disk check: [record result]
- Failed-unit check: [record result]
- Monitoring script: [record actual exit status]

## Incident investigation
See `labs/day28/incident-report.md`.

## Evidence
See `labs/day28/evidence/`.

## Key takeaway
Effective system monitoring combines resource metrics, logs, service status, and repeatable checks. Alerts should be based on defined thresholds and verified evidence.

