FROM eduardoshanahan/alpine:3.5.0

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk --add update \
    python \
    python-dev \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]
