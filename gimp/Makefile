# Define required macros here
SHELL = /bin/sh

# OK

build:
	@echo "Build Container"
	docker build -t gimp .

run:
	@echo "Run Container"
	docker run -ti --rm \
   		-e DISPLAY=:0 \
   		-v /tmp/.X11-unix:/tmp/.X11-unix \
   		gimp

stop:
	@echo "Stop Container"
	#docker stop $(docker ps -q --filter ancestor=firefox4 )
	docker ps -a -q  --filter ancestor=gimp