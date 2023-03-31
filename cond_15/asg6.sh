#! /bin/bash

read -p "Enter the value of m =" m

if [ $((m)) -eq 0 ]
then
	echo "n=0"
elif [ $((m)) -gt 0 ]
then
	echo "n = +1"
else
	echo "n = -1"
fi
