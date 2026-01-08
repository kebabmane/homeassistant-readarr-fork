ARG BUILD_FROM=ghcr.io/faustvii/readarr:latest
FROM $BUILD_FROM

# Install bashio for Home Assistant addon support
RUN apk add --no-cache bash curl jq

# Install bashio
RUN curl -J -L -o /tmp/bashio.tar.gz \
    "https://github.com/hassio-addons/bashio/archive/v0.16.2.tar.gz" \
    && mkdir /tmp/bashio \
    && tar zxvf /tmp/bashio.tar.gz --strip 1 -C /tmp/bashio \
    && mv /tmp/bashio/lib /usr/lib/bashio \
    && ln -sf /usr/lib/bashio/bashio /usr/bin/bashio \
    && rm -rf /tmp/bashio.tar.gz /tmp/bashio

# Copy run script
COPY run.sh /
RUN chmod a+x /run.sh

# Create config directory symlink for persistence
RUN mkdir -p /config

# Expose port
EXPOSE 8787

# Labels
LABEL \
    io.hass.name="Readarr" \
    io.hass.description="Ebook and audiobook collection manager" \
    io.hass.arch="aarch64|amd64" \
    io.hass.type="addon" \
    io.hass.version="1.0.3"

# Start script
CMD ["/run.sh"]
