#! /bin/bash

read -p "enter the value of n = " n

sum=0

echo "The first $n natural numbers are = "

for ((i=1;i<=n;i++))
do
   echo -n "$i "
   sum=$((sum+i))
done

echo "sum of the first $n natural numbers is = $sum"

