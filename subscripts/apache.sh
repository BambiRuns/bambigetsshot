#!/bin/bash
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