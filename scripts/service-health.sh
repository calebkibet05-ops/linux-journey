#!/usr/bin/env bash

services=(
    NetworkManager
    systemd-journald
    systemd-logind
)

failed=0

for service in "${services[@]}"; do
    if systemctl is-active --quiet "$service"; then
        echo "PASS: $service is active"
    else
        echo "FAIL: $service is not active"
        failed=1
    fi
done

exit "$failed"
