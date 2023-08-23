build:
	docker-compose -f docker-compose.yml build
up:
	docker-compose -f docker-compose.yml up -d

stop:
	docker-compose -f docker-compose.yml stop

down:
	docker-compose -f docker-compose.yml down

ps:
	docker-compose -f docker-compose.yml ps

start:
	docker-compose -f docker-compose.yml start

restart:
	docker-compose -f docker-compose.yml restart

php:
	docker-compose -f docker-compose.yml exec example-app-php-fpm-1 bash

nginx:
	docker-compose -f docker-compose.yml exec example-app-webserver-1 sh

db:
	docker-compose -f docker-compose.yml exec example-app-mysql-1 sh

logs-php:
	docker-compose -f docker-compose.yml logs -f example-app-php-fpm-1
