#! /bin/bash

read - p "enter the number  = "

sum=0
echo -n "The odd numbers are = "

for ((i=1; i<=n; i++))
do
    odd=$((2*i-1))
    echo -n "$odd "

    sum=$((sum+odd))
done

echo "The sum of odd Natural Number upto $n terms = $sum"
