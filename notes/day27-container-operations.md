# Day 27: Container Operations and Troubleshooting

## Objectives
- Manage the container lifecycle.
- Inspect container configuration, logs, and processes.
- Monitor resource usage.
- Demonstrate persistent storage with a named volume.
- Automate basic container health checks.

## Environment
- Operating system: Omarchy (Arch Linux)
- Container engine: Podman
- Test application: Nginx
- Test endpoint: http://127.0.0.1:8081

## Practical tasks
1. Created and inspected `nginx-day27`.
2. Stopped and restarted the container.
3. Checked container logs and port mappings.
4. Inspected container processes and resource usage.
5. Created the `day27-data` volume.
6. Verified that data survived the removal of a temporary container.
7. Created and tested `scripts/container-ops-check.sh`.

## Results
- Container lifecycle: [record actual result]
- HTTP test: [record actual result]
- Volume persistence: [record actual result]
- Operations script: [record actual result]

## Troubleshooting
[Document any error, its cause, and the fix.]

## Key takeaway
Containers can be stopped, restarted, and replaced, while named volumes allow data to persist independently. Reliable container operations require checking state, logs, connectivity, and resources.

## Evidence
See `labs/day27/evidence/`.
