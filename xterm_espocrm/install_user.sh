
apt-get update
apt-get install -y apt-utils xterm bluefish gedit geany kate wget
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

# su - developer
# export DISPLAY=:0
# xterm
# sudo chmod 0777 file

# apt install snapd
# snap install codium --classic
# service --status-all

# wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg     | gpg --dearmor     | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
# echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list
# sudo apt update && sudo apt install codium


