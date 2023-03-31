#! /bin/bash

read -p "Enter any number=" num

sum=0
while [ $num -gt 0 ]
do
	mod=$(( $num % 10 ))
	num=$(( $num / 10 ))
	sum=$(( $mod + $sum ))
done

echo -e "Sum of digits of entered number = $sum"
