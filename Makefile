######################################################
#            Docker Container Management             #
######################################################
# Build the Docker containers using the specified configuration file and run them in detached mode, 
# removing any orphan containers and forcing recreation if necessary.
build:
	docker compose -f ./compose.yml up --build -d --remove-orphans --force-recreate

# Start the Docker containers defined in the specified configuration file in detached mode.
up:
	docker compose -f ./compose.yml up -d

# Stop and remove the Docker containers defined in the specified configuration file.
down:
	docker compose -f ./compose.yml down

# Stop and remove the Docker containers defined in the specified configuration file, including any volumes.
down_v:
	docker compose -f ./compose.yml down -v

# Display the logs of the Docker containers defined in the specified configuration file.
logs: up
	docker compose -f ./compose.yml logs

configs:
	docker compose -f ./compose.yml config

.PHONY: build up down down_v django_admin psql logs configs
