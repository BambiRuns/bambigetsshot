#!/bin/bash
clear
echo "Welcome to Bambi, your shortcut to linux setup. Just a few questions to get us started."
echo "What can I do for you? Select an option from the list below."
echo "1) Install Full LAMPstack			2)Configure DNS and Clock"
echo "3) Install Wordpress/Joomla		4)??????"
echo "5) Profit!						6) This space intentionally left blank"
read ch

if ($ch == "1") {
		./subscripts/LAMP.sh
	}
elif ($ch == "2") {
		./subscripts/dclock.sh
	}
elif ($ch == "3") {
		./subscripts/presjoom.sh
	}
elif ($ch == "4") {
		echo "ARGH UNDERPANTS GNOMES!"
	}
elif ($ch == "5") {
		echo "ALL HAIL LEMMYWINKS!"
	}
elif ($ch == "6") {
		echo "Beware the leopard."
	}
else {
	echo "I'm sorry, please try again."
	./Bambi.sh
}

