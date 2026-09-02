# Day 5 – Process Management

## Key terms

- Process = a running program
- PID = Process ID
- Signal = message sent to a process

## Commands practiced

- ps
- ps aux
- top
- pgrep
- pidof
- pstree
- jobs
- kill

## Important signals

- SIGTERM (15) = graceful termination
- SIGKILL (9) = forced termination
- SIGHUP (1) = reload or hangup signal

## Key lesson

Administrators should inspect a process before stopping it and should try SIGTERM before SIGKILL.
