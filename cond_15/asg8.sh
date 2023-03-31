#! /bin/bash

read -p "enter the  first num =" num1
read -p "enter the  second num =" num2
read -p "enter the  third num =" num3

if [ $((num1)) -gt $((num2)) ] && [ $((num1)) -gt $((num3)) ]
then
	echo "num1 is largest"
elif [ $((num2)) -gt $((num3)) ] && [ $((num2)) -gt $((num1)) ]
then
        echo "num2 is largest"
else
        echo "num3 is largest"
fi

