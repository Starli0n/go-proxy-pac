.PHONY: all
all: build up test

.PHONY: config
config:
	docker-compose config

.PHONY: build
build:
	docker-compose build

.PHONY: up
up:
	docker-compose up -d
	docker-compose ps

.PHONY: down
down:
	docker-compose down

.PHONY: logs
logs:
	docker-compose logs -f

.PHONY: test
test:
	curl http://localhost:8080/proxy.pac

