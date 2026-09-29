# Day 25: SELinux, File Contexts, and Access Troubleshooting

## Objectives

- Check SELinux mode and status
- Inspect file and process contexts
- Compare current and expected labels
- Restore file contexts
- Search for AVC denials
- Build a reusable SELinux audit script

## Environment

- Distribution:
- SELinux mode:
- Policy status:
- Audit tools available:

## Findings

- Target path:
- Current context:
- Expected context:
- Result of `restorecon`:
- Recent AVC denials:
- Important boolean observed:
- Final audit status:
- Script exit code:

## Security Analysis

Explain:

1. The difference between DAC and MAC.
2. Why correct Unix permissions may still be insufficient.
3. Why `restorecon` is safer than disabling SELinux.
4. What information an AVC denial provides.
5. Why automatically creating allow rules can be risky.

## Files Created

- `notes/day25-selinux-and-access-troubleshooting.md`
- `labs/day25/evidence/selinux-status.txt`
- `labs/day25/evidence/test-directory-context.txt`
- `labs/day25/evidence/system-file-contexts.txt`
- `labs/day25/evidence/process-contexts.txt`
- `labs/day25/evidence/expected-context.txt`
- `labs/day25/evidence/example-file-context.txt`
- `labs/day25/evidence/srv-expected-context.txt`
- `labs/day25/evidence/restorecon-output.txt`
- `labs/day25/evidence/context-after-restorecon.txt`
- `labs/day25/evidence/recent-avc-denials.txt`
- `labs/day25/evidence/selinux-booleans.txt`
- `labs/day25/evidence/selinux-audit-output.txt`
- `labs/day25/evidence/test-file-audit.txt`
- `scripts/selinux-audit.sh`
