# Define required macros here
SHELL = /bin/sh

# ein Terminal ist erforderlich, um das Passwort zu lesen; verwenden Sie entweder die Option -S zum Lesen von
# der Standardeingabe oder konfigurieren Sie einen Askpass-Helfer
# Kein »askpass«-Programm angegeben, es wird versucht, SUDO_ASKPASS zu setzen
# SUDO_ASKPASS=${HOME}/bin/pw.sh

# OK

# mkdir -p ~/bin/pw.sh

#!/bin/bash
#echo 'foo'

# export SUDO_ASKPASS=${HOME}/.ssh/secrets/.supwd.sh
# export SUDO_ASKPASS=${HOME}/bin/pw.sh

build:
	@echo "Build Container"
	#sudo --askpass docker build -t firefox4 .
	docker build -t firefox4 .

run:
	@echo "Run Container"
	docker run -ti --rm \
   		-e DISPLAY=:0 \
   		-v /tmp/.X11-unix:/tmp/.X11-unix \
   		firefox4

stop:
	@echo "Stop Container"
	#docker stop $(docker ps -q --filter ancestor=firefox4 )
	docker ps -a -q  --filter ancestor=firefox4