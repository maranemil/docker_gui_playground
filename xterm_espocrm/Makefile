# Define required macros here
SHELL = /bin/sh

build:
	#docker-compose up -d
	docker-compose -f docker-compose.yml up -d
	docker exec espocrm bash -c 'cd /var/www/html/ && \
		chmod -R 777 ../html/ && \
		php command.php clearCache && php command.php rebuild'

build-last:
	#docker-compose up -d
	docker-compose -f docker-compose-new.yml up -d
		docker exec espocrm bash -c 'cd /var/www/html/ && \
		chmod -R 777 ../html/ && \
		php command.php clearCache && php command.php rebuild'

adduser:
	docker cp install_user.sh espocrm:/var/www/html/install_user.sh

# https://stackoverflow.com/questions/5116473/linux-command-to-open-url-in-default-browser
open:
	xdg-open http://localhost:8080
	# gnome-open http://localhost:8080
	# python -m webbrowser "http://localhost:8080"

stop:
	#docker-compose down -v
	docker-compose down -v --remove-orphans --rmi local
