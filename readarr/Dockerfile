ARG BUILD_FROM=ghcr.io/faustvii/readarr:latest
FROM $BUILD_FROM

# Switch to root to copy files
USER root

# Copy run script with execute permissions
COPY --chmod=755 run.sh /

# Switch back to nobody for security
USER nobody

# Labels for Home Assistant
LABEL \
    io.hass.name="Readarr" \
    io.hass.description="Ebook and audiobook collection manager" \
    io.hass.arch="amd64" \
    io.hass.type="addon" \
    io.hass.version="1.0.7"

CMD ["/run.sh"]
