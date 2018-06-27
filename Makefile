#######################################
#### Boostrap commands
#######################################

bootstrap:
	mkdir dist
	mkdir sites
	cp env.template .env
	make dev

#######################################
#### Developer commands
#######################################

stop:
	docker-compose stop

start:
	docker-compose up -d development

logs:
	docker-compose logs -f

dev:
	make stop && make start && make logs


#######################################
#### Building release
#######################################

build:
	docker-compose up build
