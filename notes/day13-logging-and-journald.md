# Day 13: Logging, Journald, and Service Incident Analysis

## Objectives
- Read systemd journal logs
- Filter logs by boot, priority, unit, and time
- Identify failed services
- Create a reusable journal-audit script
- Write a short incident-style report

## Commands Used
- `journalctl`
- `journalctl -b`
- `journalctl -p warning`
- `journalctl -u`
- `systemctl status`
- `systemctl --failed`

## Findings
- Hostname:
- Number of failed units:
- Number of warning/error lines:
- Most important warning:
- Service investigated:

## Incident Analysis
Explain:
1. What happened?
2. What evidence did the logs provide?
3. Was the issue active, historical, or harmless?
4. What would you check next?

## Files Created
- `notes/day13-logging-and-journald.md`
- `labs/day13/journal-snapshot.txt`
- `labs/day13/running-services.txt`
- `labs/day13/failed-services.txt`
- `labs/day13/journal-audit-output.txt`
- `scripts/journal-audit.sh`
