#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y php php-cli php-mysql

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y apache2
#starts apache2 service - This is for ubuntu and Debian
sudo /etc/init.d/apache2 start
sudo /etc/init.d/apache2 restart
#Configuration for the web server
echo "Enter your web domain"
read domi
exti=".com.conf"
exti2=".com"
domifile="$domi$exti"
#creates the configuration file
sudo touch /etc/apache2/sites-available/$domifile
cat confOverwrites/confsettings.txt >> /etc/apache2/sites-available/$domifile
sudo mkdir /var/www/html/$domi$exti2
sudo touch /var/www/html/$domi$exti2/index.html
sudo echo '<html>' >> /var/www/html/$domi$exti2/index.html
sudo echo 'This is a test' >> /var/www/html/$domi$exti2/index.html
sudo echo '</html>' >> /var/www/html/$domi$exti2/index.html

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y mariadb-client mariadb-server php php-cli
#time for Mariadb setup
sudo systemctl start mariadb.service
#Adjusts the configuration file to listen on all ip addresses it can instead of just localhost.
sudo cat confOverwrites/maria.conf > /etc/mysql/mariadb.conf.d/50-server.cnf
php ./subscripts/mysqlQuery.php

mkdir /var/bambi/
mkdir /var/bambi/back/
mkdir /var/bambi/apache/
mkdir /var/bambi/mariadb/
mkdir /var/bambi/php/

mkdir /var/bambi/back/apache/
mkdir /var/bambi/back/mariadb/
mkdir /var/bambi/back/php/

#rsync #path to apache config files
#rsync #path to mariadb master db
#rsync #path to php main folder

echo "0 23 * * * sudo cp -r -f /var/bambi/apache/ /var/bambi/back/apache/" >> /var/spool/cron/crontabs/root
echo "0 23 * * * sudo cp -r -f /var/bambi/mariadb/ /var/bambi/back/mariadb/" >> /var/spool/cron/crontabs/root
echo "0 23 * * * sudo cp -r -f /var/bambi/php/ /var/bambi/back/php/" >> /var/spool/cron/crontabs/root

clear

echo " "
echo "Success! LAMP Installed. I love Lamp, do you love lamp?"
echo "PS: the default superuser of this installation is named omnia, and the password is Atamon69"