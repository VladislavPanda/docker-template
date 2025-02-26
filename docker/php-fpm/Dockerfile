FROM php:8.4-fpm-alpine

WORKDIR /var/www/docker-template

RUN apk update \
    apk add --no-cache git curl libpq-dev \
    docker-php-ext-install pdo pdo_pgsql

CMD ["php-fpm"]
