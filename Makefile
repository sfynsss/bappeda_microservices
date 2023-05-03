## up: starts all containers in the background without forcing build
download_service:
	@echo "Starting Download Service..."
	@echo "Download SIPPDBappeda Service..."
	git clone https://github.com/biyonda/SIPPDBappeda.git SIPPDBappeda

## up_build: stops docker-compose (if running), builds all projects and starts docker compose
up_build:
	@echo "Stopping docker images (if running...)"
	docker-compose down
	@echo "Building (when required) and starting docker images..."
	docker-compose up --build -d
	@echo "Docker images built and started!"

## up: stops docker-compose (if running), starts docker compose
up:
	@echo "Stopping docker images (if running...)"
	docker-compose down
	@echo "Starting docker images..."
	docker-compose up -d
	@echo "Docker images built and started!"

## up: stops docker-compose (if running), starts docker compose
update_source:
	@echo "Updating SIPPDBappeda Service"
	cd SIPPDBappeda && git pull

## down: stop docker compose
down:
	@echo "Stopping docker compose..."
	docker-compose down
	@echo "Done!"
