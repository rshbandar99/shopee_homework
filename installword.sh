#!/bin/bash

docker pull wordpress:latest

docker run -e WORDPRESS_DB_USER=wpuser -e WORDPRESS_DB_PASSWORD=wpuser@ -e WORDPRESS_DB_NAME=wordpress_db -p 8081:80 -v /root/wordpress/html:/var/www/html --link wordpressdb:mysql --name wpcontainer -d wordpress
