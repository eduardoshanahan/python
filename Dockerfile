FROM eduardoshanahan/alpine:latest

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk update \
    add python \
    python-dev \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]
