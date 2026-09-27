# Day 23: Processes, Signals, and Service Control

## Objectives

- Inspect Linux processes
- Understand PIDs and PPIDs
- Use signals safely
- Practice foreground and background jobs
- Inspect systemd services
- Build a reusable process audit script

## Key Concepts

- PID:
- PPID:
- Process state:
- SIGTERM:
- SIGKILL:
- SIGSTOP:
- SIGCONT:
- Nice value:
- MainPID:

## Lab Findings

- Current shell PID:
- Example parent process:
- Test process PID:
- Result of SIGTERM:
- Result of SIGSTOP:
- Result of SIGCONT:
- Failed services:
- Service inspected:
- Service state:
- Process state summary:

## Troubleshooting Analysis

Explain:

1. When would you use SIGTERM?
2. Why is SIGKILL not the first choice?
3. How would you investigate a crashing service?
4. What does a zombie process indicate?
5. Why is the parent PID useful?

## Files Created

- `notes/day23-processes-signals-and-service-control.md`
- `labs/day23/evidence/process-inventory.txt`
- `labs/day23/evidence/process-tree.txt`
- `labs/day23/evidence/pstree.txt`
- `labs/day23/evidence/test-process-pid.txt`
- `labs/day23/evidence/signal-test.txt`
- `labs/day23/evidence/running-services.txt`
- `labs/day23/evidence/failed-services.txt`
- `labs/day23/evidence/journald-status.txt`
- `labs/day23/evidence/process-audit-output.txt`
- `labs/day23/evidence/target-process-audit.txt`
- `scripts/process-audit.sh`
