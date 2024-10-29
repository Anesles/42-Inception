NAME		= inception
SRCS		= ./srcs
COMPOSE		= $(SRCS)/docker-compose.yml
HOST_URL	= brumarti.42.fr

up:
	mkdir -p ~/data/database
	mkdir -p ~/data/wordpress_files
	sudo hostsed add 127.0.0.1 $(HOST_URL)
	docker compose -p $(NAME) -f $(COMPOSE) up --build || (echo " $(FAIL)" && exit 1)

down:
	sudo hostsed rm 127.0.0.1 $(HOST_URL)
	docker compose -p $(NAME) down

fclean:
	sudo rm -rf ~/data/*
	docker system prune -af