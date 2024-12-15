# Variables
DOCKER_COMPOSE = docker-compose
PROJECT_NAME = matcha

# Commandes
start:
	$(DOCKER_COMPOSE) up -d

stop:
	$(DOCKER_COMPOSE) down

build:
	$(DOCKER_COMPOSE) build

logs:
	$(DOCKER_COMPOSE) logs -f

prisma-studio:
	$(DOCKER_COMPOSE) exec backend npx prisma studio

clean:
	$(DOCKER_COMPOSE) down -v
	rm -rf backend/node_modules frontend/node_modules

rebuild: clean build start
