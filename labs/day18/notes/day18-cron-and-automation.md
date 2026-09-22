# Day 18: Cron Jobs and System Automation

## Objectives

- Install and manage cronie
- Create scheduled tasks
- Automate system reports
- Capture cron logs
- Troubleshoot scheduled jobs

## Commands Used

- `crontab -l`
- `crontab -e`
- `systemctl status cronie`
- `journalctl -u cronie`

## Cron Expression Learned

`*/5 * * * *`

Meaning:
Every five minutes.

## Files Created

- cronie-status.txt
- cron-log.txt
- cron-output.log
- system-report.sh

## Troubleshooting Notes

Explain:
- How you verified cron was running.
- How you confirmed the scheduled job executed.
- Why redirecting output helps debugging.
