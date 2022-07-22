# Running a graphical app inside a Docker
# https://blog.yadutaf.fr/2017/09/10/running-a-graphical-app-in-a-docker-container-on-a-remote-server/


# Dockerfile:

FROM ubuntu
RUN apt-get update && apt-get install -y xterm
RUN useradd -ms /bin/bash xterm
USER xterm
WORKDIR /home/xterm