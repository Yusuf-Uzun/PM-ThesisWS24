#!/usr/bin/env bash

# Start taiga.io
set -x

# Check if platform flag is required
PLATFORM_OPTION="--platform=linux/amd64"

exec docker compose -f docker-compose.yml up -d "$@"
