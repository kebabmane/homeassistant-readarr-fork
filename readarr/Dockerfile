ARG BUILD_FROM
FROM $BUILD_FROM

USER root

COPY --chmod=755 run.sh /

LABEL \
    io.hass.name="Readarr" \
    io.hass.description="Ebook and audiobook collection manager" \
    io.hass.arch="amd64" \
    io.hass.type="addon" \
    io.hass.version="1.0.10"

CMD ["/run.sh"]
