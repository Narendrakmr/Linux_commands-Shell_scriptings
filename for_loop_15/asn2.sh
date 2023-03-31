#!/bin/bash

n=10
sum=0

for ((i=1; i<=$n; i++))
do
    echo -n "$i "
    sum=$((sum+i))
done

echo -e "The sum of the first 10 natural numbers is = $sum"
