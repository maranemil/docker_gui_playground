apt-get update
apt-get install -y apt-utils xterm sudo codelite gedit kate bluefish
useradd -G sudo developer

export uid=1000 gid=1000 &&  mkdir -p /home/developer
echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd
echo "developer:x:${uid}:" >> /etc/group
echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer
chmod 0440 /etc/sudoers.d/developer
chown ${uid}:${gid} -R /home/developer
export DISPLAY=:0
echo $DISPLAY

#sudo -i
su - developer
export DISPLAY=:0
xterm


####################################
# su: Authentication failure
####################################

#https://unix.stackexchange.com/questions/581445/why-su-gives-su-authentication-failure-even-when-running-as-root
#https://askubuntu.com/questions/446570/why-does-su-fail-with-authentication-error
#https://blog.idrisolubisi.com/how-to-fix-su-authentication-failure
#
#grep test.: /etc/passwd
#grep test.: /etc/shadow
#su test1 -c id
#su test2 -c id
#sudo -s
#sudo -i

