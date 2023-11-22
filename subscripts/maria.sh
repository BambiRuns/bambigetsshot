#!/bin/bash


sudo apt update -y
sudo apt upgrade -y
sudo apt install -y mariadb-client mariadb-server php php-cli
#time for Mariadb setup
sudo systemctl start mariadb.service
#Adjusts the configuration file to listen on all ip addresses it can instead of just localhost.
sudo cat confOverwrites/maria.conf > /etc/mysql/mariadb.conf.d/50-server.cnf
php ./subscripts/mysqlQuery.php