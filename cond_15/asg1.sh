#! /bin/bash

echo "Enter the first number ="
read num1
echo "Enter the second number =" 
read num2

if [ $num1 -eq $num2 ]
then
	echo "Number 1 and Number2 are equel"
else
	echo "Not Equel"
fi
