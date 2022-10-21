#!/bin/sh

while ! mysql -hdatabase -u${MYSQL_USER} -p${MYSQL_PASSWORD}  -e ";" ; do
       echo "Waiting connect to DB"
       sleep 2
done

php artisan migrate
