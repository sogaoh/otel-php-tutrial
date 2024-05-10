FROM php:8.2-fpm-bookworm

ENV TZ="Asia/Tokyo" \
  COMPOSER_ALLOW_SUPERUSER=1 \
  COMPOSER_HOME=/composer

  RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    gcc make autoconf \
    && docker-php-ext-install pdo_mysql gd mbstring xml \
    && pecl install opentelemetry

COPY ./deploy/local/php/php.ini $PHP_INI_DIR/conf.d/php.ini

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /workdir

EXPOSE 8080

CMD ["php-fpm"]
