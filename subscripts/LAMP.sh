#!/bin/bash

./subscripts/php.sh
./subscripts/apache.sh
./subscripts/maria.sh


mkdir /var/bambi/
mkdir /var/bambi/back/
mkdir /var/bambi/apache/
mkdir /var/bambi/mariadb/
mkdir /var/bambi/php/

mkdir /var/bambi/back/apache/
mkdir /var/bambi/back/mariadb/
mkdir /var/bambi/back/php/

rsync #path to apache config files
rsync #path to mariadb master db
rsync #path to php main folder

echo "0 23 * * * sudo cp -r -f /var/bambi/apache/ /var/bambi/back/apache/" >> /var/spool/cron/crontabs/root
echo "0 23 * * * sudo cp -r -f /var/bambi/mariadb/ /var/bambi/back/mariadb/" >> /var/spool/cron/crontabs/root
echo "0 23 * * * sudo cp -r -f /var/bambi/php/ /var/bambi/back/php/" >> /var/spool/cron/crontabs/root

clear

echo " "
echo "Success! LAMP Installed. I love Lamp, do you love lamp?"
echo "PS: the default superuser of this installation is named omnia, and the password is Atamon69"