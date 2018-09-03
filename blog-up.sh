#!/bin/bash
ip=`curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'`

bash ./installdb.sh

sleep 5

bash ./installword.sh
 slep 5

bash ./installweb.sh

echo  "Done! The blog can be accessed at $ip"
