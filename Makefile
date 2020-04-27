up:
	docker-compose up -d
down:
	docker-compose down
ps:
	docker-compose ps
logs:
	docker-compose logs
build:
	docker-compose up -d --build
php:
	docker-compose exec php bash
client:
	docker-compose exec client /bin/sh
logs-clear:
	sudo rm docker/nginx/logs/*.log
	sudo rm php/storage/logs/*.log
db-migrate:
	docker-compose exec php php artisan migrate
migrate: db-migrate
db-rollback:
	docker-compose exec php php artisan rollback
db-fresh:
	docker-compose exec php php artisan migrate:fresh
mseed:
	docker-compose exec php php artisan migrate:fresh --seed
composer-install:
	docker-compose exec php composer install
composer-update:
	docker-compose exec php composer update
env-php:
	cp php/.env.example php/.env
env-client:
	cp client/.env.example client/.env
#書き込み権限
permissions:
	sudo chmod -R 777 php/bootstrap/cache
	sudo chmod -R 777 php/storage
key:
	docker-compose exec php php artisan key:generate --ansi
storage:
	docker-compose exec php php artisan storage:link
autoload:
	docker-compose exec php composer dump-autoload
#まとめて実行
install: build env-php env-client composer-install key storage permissions migrate
