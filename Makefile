DOCKER_COMPOSE = ./srcs/docker-compose.yml

VOLUMES_FOLDER = /home/jmarinho/data

.PHONY: help up down stop start restart logs ps build

all: help

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  up          Build and Start the project"
	@echo "  down        Stop all containers"
	@echo "  prune       Delete all images and containers"


inception: mkdirs
	docker-compose -f $(DOCKER_COMPOSE) up -d --build

down:
	docker-compose -f $(DOCKER_COMPOSE) down

prune:
	docker system prune -a
	@sudo rm -rf $(VOLUMES_FOLDER)

mkdirs:
	@sudo mkdir -p $(VOLUMES_FOLDER)/db
	@sudo mkdir -p $(VOLUMES_FOLDER)/wordpress