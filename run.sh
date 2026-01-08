#!/usr/bin/env bashio

set -e

bashio::log.info "Starting Readarr addon..."

# Ensure config directory exists and link to addon_config for persistence
CONFIG_DIR="/addon_config/readarr"
if [ ! -d "$CONFIG_DIR" ]; then
    bashio::log.info "Creating config directory..."
    mkdir -p "$CONFIG_DIR"
fi

# Symlink /config to persistent storage
if [ ! -L "/config" ] || [ "$(readlink /config)" != "$CONFIG_DIR" ]; then
    rm -rf /config
    ln -s "$CONFIG_DIR" /config
fi

bashio::log.info "Config directory: $CONFIG_DIR"

# Get PUID/PGID from options (default to 0 for root)
PUID=$(bashio::config 'PUID')
PGID=$(bashio::config 'PGID')

bashio::log.info "Starting Readarr with:"
bashio::log.info "- PUID: ${PUID:-0}"
bashio::log.info "- PGID: ${PGID:-0}"
bashio::log.info "- Port: 8787"

# Start Readarr
exec /app/bin/Readarr \
    --nobrowser \
    --data=/config
