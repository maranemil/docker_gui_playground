#!/bin/bash

echo "Stopping container if exists..."
#docker compose stop wordpress_test_em
docker-compose down -v --remove-orphans --rmi local
#docker-compose down -v  --remove-orphans