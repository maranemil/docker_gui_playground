# Define required macros here
SHELL = /bin/sh

# OK

build:
	@echo "Build Container"
	docker build -t firefox3 .
	#docker-compose up

run:
	@echo "Run Container"
	docker run -ti --net=host --env="DISPLAY"  \
  		-v /tmp/.X11-unix:/tmp/.X11-unix firefox3

stop:
	@echo "Stop Container"
	docker ps -a -q  --filter ancestor=firefox3