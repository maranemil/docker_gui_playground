# https://stackoverflow.com/questions/16296753/can-you-run-gui-applications-in-a-linux-docker-container

FROM debian
RUN apt-get update
RUN apt-get install -qqy x11-apps
ENV DISPLAY :0
CMD xeyes