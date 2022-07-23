# Define required macros here
SHELL = /bin/sh

# OK

build:
	@echo "Build Container"
	docker build -t tmux .

run:
	@echo "Run Container"
	docker run -ti --rm \
   		-e DISPLAY=:0 \
   		-v /tmp/.X11-unix:/tmp/.X11-unix \
   		tmux

stop:
	@echo "Stop Container"
	docker ps -a -q  --filter ancestor=tmux