.PHONY: up down build logs clean help

# Default target
help:
	@echo "Available targets:"
	@echo "  up     - Start all services (postgres + web)"
	@echo "  down   - Stop all services"
	@echo "  build  - Build all images"
	@echo "  logs   - Show logs from all services"
	@echo "  clean  - Stop services and remove volumes"
	@echo "  help   - Show this help message"

# Start all services
up:
	docker-compose up -d

# Stop all services
down:
	docker-compose down

# Build all images
build:
	docker-compose build

# Show logs from all services
logs:
	docker-compose logs -f

# Stop services and remove volumes (clean slate)
clean:
	docker-compose down -v

# Rebuild and start (useful during development)
rebuild: down build up
