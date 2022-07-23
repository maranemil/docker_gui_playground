# Define required macros here
SHELL = /bin/sh

# OK

build:
	@echo "Build Container"
	docker build -f ./Dockerfile -t gedit_geany_kate .

run:
	@echo "Run Container"
	docker kill gedit_geany_kate2
	#docker container stop -name gedit_geany_kate2
	#docker container rm -v -name gedit_geany_kate2
	docker run -ti --rm --name gedit_geany_kate2 \
   		-e DISPLAY=:0 \
   		-v /tmp/.X11-unix:/tmp/.X11-unix \
   		gedit_geany_kate

stop:
	@echo "Stop Container"
	docker ps -a -q  --filter ancestor=gedit_geany_kate

sync:
	@echo "Copy Code"
	docker cp gedit_geany_kate2:/var/www/html/dev .