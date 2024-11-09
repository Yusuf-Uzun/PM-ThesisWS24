#!/usr/bin/env bash

# Run this script when the docker container is running
# This script will create a superuser for the Taiga instance
set -x 

exec docker compose -f docker-compose.yml -f docker-compose-inits.yml run --rm taiga-manage createsuperuser $@