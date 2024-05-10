FROM redis:7.2-alpine

ARG TZ

RUN set -eux && \
    cp -r /usr/share/zoneinfo/${TZ} /etc/localtime && \
    echo ${TZ} > /etc/timezone
