###  Wordpress + gedit + bluefish 

#### start project
```bash
bash wordpress_start.sh
```

#### access project in browser 
```bash
http://localhost:8080/

# access admin with
# user admin
# password wordpress_test_em
# admin@example.localhost

http://localhost:8080/wp-login.php

```

#### stop project
```bash
bash wordpress_stop.sh
```

### start developer user in container
```shell

# enter container and run install_user.sh
# docker run -it --rm wordpress_test_em bash

sh install_user.sh

# login as developer
su - developer

# set display ENV for xterm
export DISPLAY=:0

# start xterm
xterm

# set files rights
sudo chmod --recursive 777 ../html
sudo chmod -R 777 ./html
```
