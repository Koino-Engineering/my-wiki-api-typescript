#!/bin/bash
docker-compose \
-f docker-compose.yml \
-f ./modules/back/docker-compose.yml \
-f docker-compose.back.override.yml \
down

docker-compose \
-f docker-compose.yml \
-f ./modules/back/docker-compose.yml \
-f docker-compose.back.override.yml \
up -d --remove-orphans

sleep 60

docker-compose \
-f docker-compose.yml \
-f ./modules/back/docker-compose.yml \
-f docker-compose.back.override.yml \
exec api bash -c "swagger-codegen generate -i http://back:5000/swagger.json -l typescript-fetch -o ./"

docker-compose \
-f docker-compose.yml \
-f ./modules/back/docker-compose.yml \
-f docker-compose.back.override.yml \
down
