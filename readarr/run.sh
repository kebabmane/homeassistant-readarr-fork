#!/usr/bin/env bashio

set -e

bashio::log.info "Starting Readarr addon..."

# /config is already mounted by HA as persistent storage (addon_config)
bashio::log.info "Config directory: /config"

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
