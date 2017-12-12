FROM eduardoshanahan/alpine:3.6.0.1

LABEL maintainer "Eduardo Shanahan <contact@eduardoshanahan.com>"

RUN add --no-cache python

ENTRYPOINT ["/bin/sh"]
