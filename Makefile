cp-env:
	cp app/.env.example app/.env
	cp docker/.env.example docker/.env

up:
	make cp-env
	cd ./docker && docker compose up --build -d

down:
	cd ./docker && docker compose down

start:
	cd ./docker && docker compose start

stop:
	cd ./docker && docker compose stop
