#!/usr/bin/env bash
set -e

# Read configuration from Home Assistant
CONFIG_PATH=/data/options.json

if [ -f "$CONFIG_PATH" ]; then
    PUID=$(jq -r '.PUID // 0' "$CONFIG_PATH")
    PGID=$(jq -r '.PGID // 0' "$CONFIG_PATH")
else
    PUID=0
    PGID=0
fi

echo "Starting Readarr addon..."
echo "PUID: $PUID, PGID: $PGID"

# Export for Readarr
export PUID
export PGID

exec /app/bin/Readarr --nobrowser --data=/config
