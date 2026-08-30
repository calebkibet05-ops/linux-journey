# Day 2 – Fedora Filesystem

## Important Directories

| Directory | Purpose |
|-----------|---------|
| `/home` | User files |
| `/etc` | Configuration files |
| `/var` | Logs and changing data |
| `/usr` | Installed programs |

## Commands Learned

### `find`

Searches for files by name.

Example:

```bash
find ~ -name fedora-lab.txt
```

### `grep`

Searches for text inside files.

Example:

```bash
grep Fedora logs.txt
```

### `systemctl`

Manages Linux services.

### `journalctl`

Reads system logs for troubleshooting.

## What I Learned

- Linux stores configuration in `/etc`.
- Logs are mainly stored under `/var`.
- `find` locates files.
- `grep` searches file contents.
- `systemctl` and `journalctl` are essential troubleshooting tools.
