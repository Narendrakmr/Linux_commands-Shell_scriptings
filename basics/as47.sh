#! /bin/bash

echo "1 - Creation of user"
echo "2 - Deletion of user"
echo "3 - Creation of group"
echo "4 - deletion of group"
echo "5 - exit the menu"
read -p "Enter the choice from menu = " menu

case $menu in
	"1")
		read -p "Enter the name of user = " usr
		sudo useradd $usr
		echo -e "$usr has been added sucessfully"
		;;
	"2")
		read -p "Enter the name of user to be deleted = " usrd
		sudo userdel $usrd
		echo -e "$usrd has been deleted sucessfully"
		;;
	"3") 
		read -p "Enter the name of group to be created = " grc
		sudo groupadd $grc
		echo -e "$grc has been added sucessfully"
		;;	
	"4")
		read -p "Enter the name of group to be deleted = " grd
		sudo groupdel $grd
		echo -e "$grd has been deleted sucessfully"
		;;
	"5") 
		exit
		echo -e "Exited sucessfully"
esac



