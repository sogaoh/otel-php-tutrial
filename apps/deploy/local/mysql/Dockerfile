FROM mysql:8.0

COPY ./deploy/local/mysql/my.cnf /etc/mysql/my.cnf

ARG TZ

RUN set -eux && \
    ln -sf  /usr/share/zoneinfo/${TZ} /etc/localtime
