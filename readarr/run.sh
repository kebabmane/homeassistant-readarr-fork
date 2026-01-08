#!/usr/bin/env bash
set -e

echo "Starting Readarr addon..."

# Use the original entrypoint from the base image
exec /entrypoint.sh
