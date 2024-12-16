# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmarinho <jmarinho@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/13 14:15:27 by jmarinho          #+#    #+#              #
#    Updated: 2024/12/16 14:53:21 by jmarinho         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DOCKER_COMPOSE = ./srcs/docker-compose.yml

VOLUMES_FOLDER = /home/jmarinho/data

inception: mkdirs
	docker-compose -f $(DOCKER_COMPOSE) up -d --build

build: mkdirs
	docker-compose -f $(DOCKER_COMPOSE) build

up:
	docker-compose -f $(DOCKER_COMPOSE) up -d

down:
	docker-compose -f $(DOCKER_COMPOSE) down

volumes:
	docker-compose -f $(DOCKER_COMPOSE) down --volumes

prune:
	docker system prune -a
	@sudo rm -rf $(VOLUMES_FOLDER)
	@docker volume rm srcs_mariadb_data
	@docker volume rm srcs_wordpress_data

mkdirs:
	@sudo mkdir -p $(VOLUMES_FOLDER)/db
	@sudo mkdir -p $(VOLUMES_FOLDER)/wordpress

.PHONY: help up down stop start restart logs ps build