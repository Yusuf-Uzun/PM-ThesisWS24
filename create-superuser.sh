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
INIT_FILE="docker-compose-inits.${PLATFORM}.yml"

echo "Creating a superuser for Taiga.io using platform: $PLATFORM"
exec docker compose -f "$COMPOSE_FILE" -f "$INIT_FILE" run --rm taiga-manage createsuperuser "$@"
