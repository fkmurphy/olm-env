#!/bin/sh

function run() {
    dkc="docker-compose"

    $dkc down --remove-orphans

    $dkc build --no-cache

    $dkc run --rm olm \
        sh -c "composer install && npm install" && \
        $dkc up -d && \
        $dkc exec olm sh /scripts/migrations.sh && \
        $dkc exec olm php artisan key:generate

    echo "Add olm.test to /etc/hosts..." && \
    ([[ ! $(grep -e "127.0.0.1 olm.test" /etc/hosts) ]] && echo "127.0.0.1 olm.test" | sudo tee -a /etc/hosts > /dev/null) && \
    echo "Addedd olm.test"
}
