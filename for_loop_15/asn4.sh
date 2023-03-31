#! /bin/bash

sum=0
count=0

echo "Input the 10 numbers = "

for ((i=1; i<=10; i++))
do
    read -p "Number-$i: " num
    sum=$((sum + num))
    count=$((count + 1))
done

average=$(echo "scale=2; $sum / $count" | bc)

echo "Sum of entered numbers = $sum"
echo "Average of entered numbers = $average"
