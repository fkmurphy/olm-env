# Unofficial environment OpenLitterMap 

Environment for OpenLitterMap (primarily development oriented)
Author: Julian Murphy
[Go to official community Github](https://github.com/OpenLitterMap)

## Instructions
1. clone this repo

```sh
    git clone git@github.com:fkmurphy/olm-env.git
```
2. Copy environment variables example
```sh
    cp .env.example .env
```
3. Set variable OLM_FOLDER to location OpenLitterMap Laravel project
```sh
    ...
    OLM_PROJECT=~/my-projects/openlittermap-web
    ...
```
4. Set user id. Use `echo $UID` to know your ID
```sh
    ...
    USERID=501 # MacOS (default user)
    USERID=1000 # Linux (default user)
    ...
```
6. Remember config env for Laravel project. In openlittermap-web use the next config for database:
```sh
    DB_CONNECTION=mysql
    DB_HOST=database # docker service
    DB_PORT=3306
    DB_DATABASE=olm
    DB_USERNAME=homestead
    DB_PASSWORD=secret
```

5. Install project
```sh
    sh scripts/install.sh
```

6. Go to https://olm.test

Note: `install.sh` script already add new line in the `/etc/hosts` when request sudoer permission


## Helper Scripts

### Artisan
```sh
    ./scripts/artisan.sh "cache:clear"
```

### Up environment
```sh
    ./scripts/up.sh
```
