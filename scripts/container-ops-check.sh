
#!/usr/bin/env bash

set -u

CONTAINER="nginx-day27"
URL="http://127.0.0.1:8081"

echo "=== Day 27 Container Operations Check ==="

if ! command -v podman >/dev/null 2>&1; then
    echo "ERROR: Podman is not installed."
    exit 1
fi

if ! podman container exists "$CONTAINER"; then
    echo "ERROR: Container $CONTAINER does not exist."
    exit 1
fi

STATUS=$(podman container inspect \
    --format '{{.State.Status}}' "$CONTAINER") || exit 1

echo "Container status: $STATUS"

if [[ "$STATUS" != "running" ]]; then
    echo "ERROR: Container is not running."
    echo "Recent logs:"
    podman logs --tail 20 "$CONTAINER"
    exit 1
fi

if curl --fail --silent --show-error \
    --max-time 5 "$URL" >/dev/null; then
    echo "SUCCESS: HTTP endpoint is responding."
else
    echo "ERROR: HTTP endpoint is not responding."
    exit 1
fi

echo "SUCCESS: Container operations check passed."

