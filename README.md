## 実行手順

```bash
$ git clone https://github.com/AI1411/docker-laravel-nuxt-postgres.git

$ cd docker-laravel-nuxt-postgres

$ make install
```

## コンテナの起動確認

```bash
$ make ps
```

もしくは

```bash
$ docker-compose ps
```

## PHPのワークスペースへの入り方

```bash
$ make php
```

もしくは

```bash
$ docker-compose exec php bash
```

## Nuxt.jsのワークスペースへの入り方

```bash
$ make client
```

もしくは

```bash
$ $ docker-compose exec client /bin/sh
```

## アクセスURL

フロントエンドにアクセス　http://localhost:8080 

バックエンドにアクセス　　http://localhost:8080

## コンテナの立ち上げ方

```bash
$ make up
```

もしくは

```bash
$ docker-compose up -d
```

## コンテナの停止方法

```bash
$ make down
```

もしくは

```bash
$ docker-compose down
```

## log確認

```bash
$ make logs
```

もしくは

```bash
$ $ make logs-clear
```

もしくは

```bash
$ sudo rm docker/nginx/logs/*.log
$ sudo rm api/storage/logs/*.log
```

## postgresへの接続方法

```bash
$ docker-compose exec postgres bash

psql -U ${POSTGRES_USER} -d ${POSTGRES_DB}
```

## CUIツールからpostgresに接続したい時

DB_PORT=54321

DB_PASS=app

USER_NAME=app

DB_NAME=app

## Makefileについて

make ...

などのコマンドはMakefileを参照

```bash
$ make {Makefileで定義されている任意のコマンド}
```

でMakefileに定義されているコマンドが実行できる
