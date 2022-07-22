# Define required macros here
SHELL = /bin/sh

clear-containers:
	@echo "Removing Containers"
	#docker kill $(docker ps -q)
	docker rm -f $(docker ps -aq)
	#sudo docker ps -q | xargs docker kill

remove-containers:
	@echo "Removing stopped containers"
	#@echo "y" | docker container prune
	docker container prune

remove-volumes:
	@echo "Removing all volumes"
	docker volume rm $(docker volume ls -q)

stop:
	@echo "Stopping docker"
	#sudo service docker stop
	sudo systemctl stop docker

start:
	@echo "Starting docker"
	#sudo service docker start
	systemctl start docker

show-images:
	sudo docker images

stop-local-services:
	sudo service apache2 stop
	sudo service mysql stop