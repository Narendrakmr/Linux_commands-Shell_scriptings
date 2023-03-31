#! /bin/bash

read -p "enter the number = " n

fact=1

for (( i=1; i<=$n; i++ ))
do
  factorial=$((fact * i))
done

echo -e "The factorial of $num is: $factorial"
