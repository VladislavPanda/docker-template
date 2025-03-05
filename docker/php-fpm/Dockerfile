FROM php:8.4-fpm-alpine

WORKDIR /var/www/app

RUN addgroup -g 1000 appgroup && \
    adduser -D -u 1000 -G appgroup appuser

RUN apk update \
    apk add --no-cache git curl libpq-dev \
    docker-php-ext-install pdo pdo_pgsql

RUN chown -R appuser:appgroup /var/www/app

USER appuser

CMD ["php-fpm"]
