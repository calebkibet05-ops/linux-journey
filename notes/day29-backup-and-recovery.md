# Day 29: Linux Backup and Recovery

## Objectives
- Create compressed backups using tar and gzip.
- Verify archive integrity and SHA-256 checksums.
- Restore files into a separate directory.
- Automate backups using Bash.
- Document a recovery test.

## Environment
- Operating system: Omarchy (Arch Linux)
- Backup utility: tar
- Compression: gzip
- Integrity verification: sha256sum
- Automation: Bash

## Practical work
1. Created disposable sample configuration and log files.
2. Created a timestamped compressed archive.
3. Tested the archive and verified its checksum.
4. Restored the archive into a separate directory.
5. Compared the restored files with the originals.
6. Created `scripts/backup-lab.sh`.
7. Simulated a missing file and recovered it from the archive.

## Results
- Archive creation: [record actual result]
- Checksum verification: [record actual result]
- Directory comparison: [record actual result]
- Missing-file recovery: [record actual result]
- Backup script: [record actual result]

## Evidence
See `labs/day29/evidence/`.

## Lessons learned
A successful backup process requires more than creating an archive. Integrity checks, tested recovery procedures, retention policies, and independent backup copies are important for dependable recovery.

## Production considerations
- Store additional copies separately from the source machine.
- Restrict access to sensitive backups.
- Define retention and recovery objectives.
- Schedule backups and monitor their results.
- Test restoration periodically.
