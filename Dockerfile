FROM eduardoshanahan/alpine:latest

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk add --update \
    python \
    python-dev \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]
