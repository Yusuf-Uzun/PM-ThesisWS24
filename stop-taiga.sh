#!/usr/bin/env bash

# Stop taiga.io
set -x

exec docker compose -f docker-compose.yml down "$@"
