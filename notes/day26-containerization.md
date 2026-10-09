# Day 26: Containerization with Podman

## Objective
Learn container images, container lifecycle management, port mapping, logging, and health checks on Omarchy Linux.

## Environment
- OS: Omarchy (Arch Linux)
- Container engine: Podman
- Test application: Nginx
- Host endpoint: http://127.0.0.1:8080

## Concepts learned
- Images provide templates for containers.
- Containers run isolated application environments.
- Port mapping exposes a container service through a host port.
- Logs and inspection help troubleshoot container failures.

## Practical work
1. Verified the Podman installation.
2. Inspected existing images and containers.
3. Pulled the Nginx image.
4. Created the `nginx-day26` container.
5. Tested the web server with curl.
6. Inspected container logs and port mapping.
7. Created and ran a container health-check script.

## Results
- Podman installation: [record actual result]
- Image pull: [record actual result]
- Container status: [record actual result]
- HTTP response: [record actual result]
- Health-check script: [record actual result]

## Evidence
See `labs/day26/evidence/`.

## Troubleshooting notes
[Record errors encountered, their causes, and how they were resolved.]

## Key takeaway
Containerization provides a repeatable way to package and run applications. Reliable operations also require checking container state, logs, port mappings, and application responses.
