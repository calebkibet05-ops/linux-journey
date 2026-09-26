# Day 22: Storage, Filesystems, and Disk Troubleshooting

## Objectives

- Inspect block devices and filesystems
- Check disk and inode usage
- Identify large directories and files
- Inspect mount points
- Detect deleted-but-open files
- Build a reusable storage-health script

## Storage Concepts

- Block device:
- Partition:
- Filesystem:
- Mount point:
- Inode:
- Mount option:

## Findings

- Root filesystem:
- Root filesystem type:
- Space usage:
- Inode usage:
- Largest directory:
- Deleted-but-open files:
- Storage-related journal errors:
- Final storage status:
- Script exit code:

## Incident Analysis

Explain:

1. Whether the system has a current storage risk.
2. What evidence supports your conclusion.
3. What you would investigate next if usage increased.
4. Why inode exhaustion can happen even when free space exists.
5. Why deleted-open files can hide the real disk usage.

## Files Created

- `notes/day22-storage-and-filesystems.md`
- `labs/day22/evidence/block-devices.txt`
- `labs/day22/evidence/mounted-filesystems.txt`
- `labs/day22/evidence/filesystem-usage.txt`
- `labs/day22/evidence/root-filesystem.txt`
- `labs/day22/evidence/top-level-directory-usage.txt`
- `labs/day22/evidence/home-directory-usage.txt`
- `labs/day22/evidence/large-repository-files.txt`
- `labs/day22/evidence/deleted-open-files.txt`
- `labs/day22/evidence/storage-errors.txt`
- `labs/day22/evidence/storage-health-output.txt`
- `scripts/storage-health.sh`
