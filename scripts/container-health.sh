
#!/usr/bin/env bash

set -u

CONTAINER_NAME="nginx-day26"
URL="http://127.0.0.1:8080"

echo "=== Container Health Check ==="
echo "Container: $CONTAINER_NAME"

if ! command -v podman >/dev/null 2>&1; then
    echo "ERROR: Podman is not installed."
    exit 1
fi

if ! podman container exists "$CONTAINER_NAME"; then
    echo "ERROR: Container does not exist."
    exit 1
fi

if ! podman container inspect \
    --format '{{.State.Running}}' "$CONTAINER_NAME" \
    | grep -qx true; then
    echo "ERROR: Container is not running."
    echo "Recent logs:"
    podman logs --tail 20 "$CONTAINER_NAME"
    exit 1
fi

if curl --fail --silent --show-error \
    --max-time 5 "$URL" >/dev/null; then
    echo "SUCCESS: Container is running."
    echo "SUCCESS: HTTP endpoint is responding."
    exit 0
else
    echo "ERROR: Container is running, but HTTP failed."
    exit 1
fi

