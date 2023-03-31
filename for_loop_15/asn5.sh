#! /bin/bash

read -p "Enter the number = " n

for (( i=1; i<=n; i++ ))
do
    cube=$((i*i*i))
    echo -e "Number is = $i and cube of the $i is = $cube"
done
