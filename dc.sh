#!/bin/bash
docker-compose -f docker-compose.yml -f ./modules/back/docker-compose.yml -f docker-compose.back.override.yml $@
