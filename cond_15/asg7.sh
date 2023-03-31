#! /bin/bash

read -p "Enter your height as cm" ht

if [ $((ht)) -le 135 ]
then
	echo "Person is dwarf"
elif [ $((ht)) -ge 136 ] && [ $((ht)) -lt 190 ]
then
	echo "person is average"
else
	echo "person is tall"
fi

