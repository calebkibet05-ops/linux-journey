# Day 21: Automation with systemd Timers

## Objectives

- Build a custom service
- Schedule it with a timer
- Verify execution
- Inspect logs

## Commands Used

- systemctl --user daemon-reload
- systemctl --user enable --now
- systemctl --user list-timers
- journalctl --user

## Files Created

- scripts/daily-maintenance.sh
- ~/.config/systemd/user/daily-maintenance.service
- ~/.config/systemd/user/daily-maintenance.timer
- labs/day21/manual-maintenance-output.txt
- labs/day21/maintenance.log

## Findings

- Timer active:
- Last run:
- Next run:
- Log location:

## What I Learned

Write 3–5 sentences explaining why systemd timers are better than manually running maintenance scripts.
