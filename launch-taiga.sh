#!/usr/bin/env bash

set -e

if [[ "$1" == "--platform" ]]; then
    PLATFORM=$2
    if [[ "$PLATFORM" != "amd" && "$PLATFORM" != "arm" ]]; then
        echo "Error: Invalid platform specified. Use 'amd' or 'arm'."
        exit 1
    fi
    shift 2
else
    echo "Usage: $0 --platform <amd|arm>"
    exit 1
fi

COMPOSE_FILE="docker-compose.${PLATFORM}.yml"

echo "Starting Taiga.io using platform: $PLATFORM"
exec docker compose -f "$COMPOSE_FILE" up -d "$@"
