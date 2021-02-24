FROM kong:2.2.0-alpine
VOLUME [ "/data" ]

ADD kong.yaml /data/kong.yaml

ENV KONG_DATABASE off
ENV KONG_DECLARATIVE_CONFIG /data/kong.yaml
ENV KONG_PROXY_ACCESS_LOG: /dev/stdout
ENV KONG_ADMIN_ACCESS_LOG: /dev/stdout
ENV KONG_PROXY_ERROR_LOG: /dev/stderr
ENV KONG_ADMIN_ERROR_LOG: /dev/stderr