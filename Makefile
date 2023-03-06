.DEFAULT_GOAL := help

COLOR_START=\033[0;32m
COLOR_END=\033[0m

########################
# Container commands
########################
build:
	docker compose build

kill:
	docker compose kill db

logs:
	docker compose logs --follow

nuke:
	docker kill $$(docker ps -aq) 2>/dev/null || true
	docker rm -f $$(docker ps -aq) 2>/dev/null || true
	docker rmi -f $$(docker images -aq) 2>/dev/null || true
	docker volume rm $$(docker volume ls -q) 2>/dev/null || true
	docker network rm $$(docker network ls -q) 2>/dev/null || true
	docker system prune -f
	docker volume prune -f

prune:
	docker system prune --force
	docker volume prune --force

remove:
	docker compose rm --force db

restart:
	docker compose restart db

stop:
	docker compose stop db

up:
	docker compose up --detach


help:
	@echo "Usage: make <target>"
	@echo ""

	@echo "$(COLOR_START)Container Commands$(COLOR_END)"
	@echo ""

	@echo "build: Build docker image"
	@echo "logs: Tail docker logs"
	@echo "kill: Kill db docker container"
	@echo "prune: Prune docker containers"
	@echo "remove: Remove db docker container"
	@echo "restart: Restart db docker container"
	@echo "stop: Stop db docker container"
	@echo "up: Start docker containers"
	@echo ""
