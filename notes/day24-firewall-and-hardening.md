# Day 24: Firewall Management and Basic Linux Hardening

## Objectives

- Identify the active firewall framework
- Inspect listening services
- Inspect allowed services and ports
- Test a runtime-only firewall rule
- Compare listening sockets with firewall exposure
- Review basic SSH hardening settings
- Build a reusable firewall audit script

## Environment

- Distribution:
- Firewall framework:
- Firewall service state:
- Active zone or nftables table:

## Findings

- Listening ports:
- Allowed firewall services:
- Allowed firewall ports:
- Temporary rule test result:
- SSH settings reviewed:
- Unnecessary exposure found:
- Final audit status:
- Script exit code:

## Security Analysis

Explain:

1. Why listening sockets and firewall rules are separate checks.
2. Why runtime-only testing is safer before permanent changes.
3. Why unnecessary open ports increase attack surface.
4. Why SSH changes should be tested with an active fallback session.
5. What you would verify before disabling a service.

## Files Created

- `notes/day24-firewall-and-hardening.md`
- `labs/day24/evidence/firewall-framework.txt`
- `labs/day24/evidence/listening-services.txt`
- `labs/day24/evidence/firewalld-state.txt`
- `labs/day24/evidence/active-zones.txt`
- `labs/day24/evidence/firewalld-rules.txt`
- `labs/day24/evidence/allowed-services.txt`
- `labs/day24/evidence/allowed-ports.txt`
- `labs/day24/evidence/exposure-comparison.txt`
- `labs/day24/evidence/ssh-hardening-settings.txt`
- `labs/day24/evidence/firewall-audit-output.txt`
- `scripts/firewall-audit.sh`
