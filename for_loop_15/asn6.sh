#! /bin/bash
read -p "enter the num for which table is to be calculated = " a
for i in {1..10}
do
    echo "$a x $i = $((a*i))"
done
