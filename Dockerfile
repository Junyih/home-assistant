FROM lsiobase/alpine:3.10

MAINTAINER junyih

RUN apk add --no-cache python3 libffi-dev libssl1.1 libressl-dev && \
    pip3 install --upgrade --no-cache-dir pip && \
    apk add --no-cache --virtual=build-dependencies build-base linux-headers python3-dev && \
    pip3 install --no-cache-dir homeassistant python-miio HAP-python PyTurboJPEG && \
    apk del build-dependencies && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

EXPOSE 8123

CMD ["hass"]
