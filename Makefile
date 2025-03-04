install:
	cp app/.env.example app/.env
	cp docker/.env.example docker/.env
	cd ./docker && docker compose up --build -d

stop:
	cd ./docker && docker compose down

start:
	cd ./docker && docker compose start

enter-container:
	docker exec -it docker-template-php-fpm /bin/sh