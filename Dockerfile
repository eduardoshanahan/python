FROM eduardoshanahan/alpine:3.5.0

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk update \
&& apk add python \
&& rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]
