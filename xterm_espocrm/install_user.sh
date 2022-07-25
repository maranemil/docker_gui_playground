
apt-get update
apt-get install -y apt-utils xterm bluefish gedit geany kate
apt-get install -y sudo
useradd -G sudo developer

## RUN dpkg-reconfigure sudo
## RUN useradd -m developer && adduser developer sudo
## ENV DISPLAY=host.docker.internal:0.0

#export DISPLAY=:0
## Replace 1000 with your user / group id
export uid=1000 gid=1000 &&  mkdir -p /home/developer
echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
echo "developer:x:${uid}:" >> /etc/group
echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer
chmod 0440 /etc/sudoers.d/developer
chown ${uid}:${gid} -R /home/developer

## USER developer
## ENV HOME /home/developer

#su - developer
#export DISPLAY=:0
#xterm
#sudo chmod 0777 file