#!/bin/bash

echo "Removing old container if exists..."
docker-compose down -v --remove-orphans --rmi local

echo "Building image..."
docker build -t mariadb_test_em_db -f ./Dockerfile_DB .

echo "Building image..."
docker build -t wordpress_test_em -f ./Dockerfile_WP .

docker-compose -f docker-compose.yml up -d

docker cp install_user.sh wordpress_test_em:/var/www/html/install_user.sh

## docker volume create --name=mariadb
## sleep 25

#echo "Copying sql into the database container..."
#docker cp wordpress.sql mariadb_test_em_db:/var/www/html/wordpress.sql

#echo "Restoring the database..."
#docker exec mariadb_test_em_db bash -c "/usr/bin/mysql -u root --password=password wordpress < /var/www/html/wordpress.sql"
#docker exec mariadb_test_em_db bash -c "/usr/bin/mysql -u root --password=password wordpress < /wordpress.sql"

