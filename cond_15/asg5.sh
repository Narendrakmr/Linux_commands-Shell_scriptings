#! /bin/bash

read -p "Enter the age =" age

if [ $((age)) -ge 18 ]
then
	echo "congratulations , You are elligible"
else
	echo "Not elligible"
fi
