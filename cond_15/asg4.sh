#! /bin/bash

read -p "Enter the year" ye
if [ $((ye%400)) == 0 ]
then
	echo "Leap Year"
else 
	echo "Not a leap year"
fi
