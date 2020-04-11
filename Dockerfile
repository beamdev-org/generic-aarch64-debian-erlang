FROM leanersoft/generic-aarch64-debian-buildpack-deps:buster

RUN [ "cross-build-start" ]

RUN set -ex; \
  apt-get update; \
  apt-get install -y --no-install-recommends \
    erlang

CMD ["erl"]

RUN [ "cross-build-end" ]
