```
  ____                   _      _ _   _            __  __             
 / __ \                 | |    (_) | | |          |  \/  |            
| |  | |_ __   ___ _ __ | |     _| |_| |_ ___ _ __| \  / | __ _ _ __  
| |  | | '_ \ / _ \ '_ \| |    | | __| __/ _ \ '__| |\/| |/ _` | '_ \ 
| |__| | |_) |  __/ | | | |____| | |_| ||  __/ |  | |  | | (_| | |_) |
 \____/| .__/ \___|_| |_|______|_|\__|\__\___|_|  |_|  |_|\__,_| .__/ 
       | |                                                     | |    
       |_|                                                     |_|    

Unofficial environment OpenLitterMap 
Environment for OpenLitterMap (first development oriented)
Author: Julian Murphy
```
[Go to official OpenLitterMap community Github](https://github.com/OpenLitterMap)

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
    ./olm install
```

6. Go to https://olm.test

Note: `scripts/install.sh` script already add new line in the `/etc/hosts` when request sudoer permission


## Helper Scripts

### Artisan
```sh
    ./olm artisan "cache:clear"
```

### Up environment
```sh
    ./olm up
```




