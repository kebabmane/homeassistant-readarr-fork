ARG BUILD_FROM=ghcr.io/faustvii/readarr:latest
FROM $BUILD_FROM

# Copy run script
COPY run.sh /
RUN chmod a+x /run.sh

# Labels for Home Assistant
LABEL \
    io.hass.name="Readarr" \
    io.hass.description="Ebook and audiobook collection manager" \
    io.hass.arch="amd64" \
    io.hass.type="addon" \
    io.hass.version="1.0.6"

CMD ["/run.sh"]
