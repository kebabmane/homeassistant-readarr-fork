#!/usr/bin/env bash
set -e
echo "Starting Readarr addon..."
exec /app/bin/Readarr --nobrowser --data=/config
