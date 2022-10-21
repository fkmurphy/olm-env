#!/bin/sh

dkc="docker-compose"

$dkc down --remove-orphans

$dkc build --no-cache

$dkc run --rm olm \
    sh -c "composer install && npm install" && \
    $dkc up -d && \
    $dkc exec olm sh /scripts/migrations.sh && \
    $dkc exec olm php artisan key:generate

