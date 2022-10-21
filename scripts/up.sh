#!/bin/sh

function run() {
    dkc="docker-compose"

    $dkc down --remove-orphans && $dkc up -d
}
