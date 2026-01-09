ARG BUILD_FROM
FROM $BUILD_FROM

USER root

# Install jq for parsing Home Assistant options
RUN apk add --no-cache jq

COPY --chmod=755 run.sh /

LABEL \
    io.hass.name="Readarr" \
    io.hass.description="Ebook and audiobook collection manager" \
    io.hass.arch="amd64" \
    io.hass.type="addon" \
    io.hass.version="1.0.11"

CMD ["/run.sh"]
