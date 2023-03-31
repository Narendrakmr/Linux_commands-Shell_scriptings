# /bin/bash

read -p "enter num1 = " num1
read -p "enter num2 = " num2
read -p "enter num3 = " num3

a=`expr $num1 + $num2 + $num3`
avg=$(( $a / 3 ))

echo -e "Average of entered numbers = $avg"

