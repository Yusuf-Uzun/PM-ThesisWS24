#!/usr/bin/env bash

# Start taiga.io
set -x

exec docker compose -f docker-compose.yml up -d "$@"
