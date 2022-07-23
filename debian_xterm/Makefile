# Define required macros here
SHELL = /bin/sh

# OK

build:
	@echo "Build Container"
	docker build -f ./Dockerfile -t debian-xterm .

run:
	@echo "Run Container"
	docker run -ti --rm --name debian-xterm2 \
   		-e DISPLAY=:0 \
   		-v /tmp/.X11-unix:/tmp/.X11-unix \
   		debian-xterm

stop:
	@echo "Stop Container"
	docker ps -a -q  --filter ancestor=debian-xterm