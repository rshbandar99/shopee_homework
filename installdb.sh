#!/bin/bash
docker pull mariadb
docker images

mkdir ~/wordpress
mkdir -p ~/wordpress/database
mkdir -p ~/wordpress/html


docker run -e MYSQL_ROOT_PASSWORD=rshbandar123 -e MYSQL_USER=wpuser -e MYSQL_PASSWORD=wpuser@ -e MYSQL_DATABASE=wordpress_db -v /root/wordpress/database:/var/lib/mysql --name wordpressdb -d mariadb
