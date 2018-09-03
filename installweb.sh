#!/bin/bash
apt-get -y install nginx
#read -p "Do you want to continue? [Y/n] " -n 1 -r
#echo    # (optional) move to a new line
#if [[ $REPLY =~ ^[Yy]$ ]]
#then
cp conf.txt /etc/nginx/sites-available/wordpress
ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/
rm -f /etc/nginx/sites-available/default
rm -f /etc/nginx/sites-enabled/default
echo "berhasil"
#fi
rm /var/lib/dpkg/lock
rm /var/cache/apt/archives/lock
