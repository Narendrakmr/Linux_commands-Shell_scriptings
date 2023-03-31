#!/bin/bash

read -p "enter the number of rows: " n

for ((i=1; i<=n; i++))
do
    for ((j=i; j<=n; j++))
    do
        echo -ne " "
    done

    for ((k=1; k<=i; k++))
    do
        echo -ne "* "
    done

    echo
done
