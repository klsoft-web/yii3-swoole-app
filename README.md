# YII3-SWOOLE-APP

The repository contains the [YII3 application template](https://github.com/yiisoft/app) and the additional configuration required to run the  [Swoole](https://github.com/swoole/swoole-src) HTTP server.

See also:

- [YII3-SWOOLE](https://github.com/klsoft-web/yii3-swoole) - The package provides the Swoole HTTP server for the [Yii 3](https://yii3.yiiframework.com) application.

## How to use

 1. Clone the repository.
 2. Run `composer install`.
 3. Start the application: 
    ```bash 
    ./yii swoole start
    ```
Open your browser to the URL [http://localhost:9501](http://localhost:9501)

## How to use with Docker

 1. Clone the repository.
 2. Start the application: 
    ```bash 
    docker compose up -d 
    ```
Open your browser to the URL [http://localhost:9501](http://localhost:9501)

[Restart](https://wiki.swoole.com/en/#/server/methods?id=reload) the Swoole HTTP server worker processes:
```bash
docker compose exec app ./yii swoole reload
```

Shutdown the Swoole HTTP server:
```bash
docker compose exec app ./yii swoole shutdown
```

## Additional configuration has been added to the YII3 application template

 1. Added   "klsoft/yii3-swoole": "^1.0" to the `composer.json`.
 2. Added `Dockerfile`.
 3. Added `docker-compose.yml`.
 4. Modified `.dockerignore`.
