#Running GUI apps with Docker
#
#http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/
#https://unix.stackexchange.com/questions/697939/how-to-allow-the-docker-container-to-reach-hosts-x11-socket-without-net-host
#https://github.com/fgrehm/docker-netbeans

# Dockerfile


FROM ubuntu:14.04

RUN apt-get update && apt-get install -y firefox

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
CMD /usr/bin/firefox

