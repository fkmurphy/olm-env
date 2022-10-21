#!/bin/sh

function run() {
    dkc="docker-compose"

    $dkc exec olm php artisan $1
}
