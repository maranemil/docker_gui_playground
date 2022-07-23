# gedit
#FROM php:7.2-apache
FROM php:7.3.27-apache

RUN apt-get update

RUN apt-get install -y apt-utils aptitude  \
     wget gpg libasound2 build-essential gcc-multilib sudo gedit geany kate bluefish nano xterm

# 400mb ------------
# RUN apt-get -y install gnome-session gnome-terminal


# eric spyder emacs vim

#RUN pecl install redis-5.1.1 \
#	&& pecl install xdebug-2.8.1 \
#	&& docker-php-ext-enable redis xdebug

RUN useradd -m developer && adduser developer sudo


ENV DISPLAY=host.docker.internal:0.0
# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer


#RUN useradd -m developer  && adduser developer sudo
    #&& echo "developer:developer" | chpasswd && adduser developer sudo

USER developer
ENV HOME /home/developer

COPY src dev
ADD custom dev/custom

#RUN sudo chmod -R 777 dev
#RUN sudo chown -R www-data:www-data dev
RUN sudo chmod -R 777 dev

CMD xterm
#CMD bluefish