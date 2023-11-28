#!/bin/bash
clear
echo "Welcome to Bambi, your shortcut to linux setup. Just a few questions to get us started."
echo "What can I do for you? Select an option from the list below."
echo "1) Install Full LAMPstack			2) LAMPstack with Wordpress"

read ch

if [ $ch == "1" ]
	then
		./subscripts/LAMP.sh
elif [ $ch == "2" ]
	then
		./subscripts/LAMPw.sh
else
	echo "I'm sorry, please try again."
	./Bambi.sh
fi
