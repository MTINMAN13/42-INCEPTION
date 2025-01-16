all: up

up:
    docker-compose -f srcs/docker-compose.yml up --build -d

down:
    docker-compose -f srcs/docker-compose.yml down

clean: down
    docker system prune -a

.PHONY: all up down clean
