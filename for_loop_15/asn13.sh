#! /bin/bash

read -p "enter the number of rows = " n

for (( i=1; i<=n; i++ ))
do
    
    for (( j=1; j<=n-i; j++ ))
    do
        echo -n " "
    done

    
    k=1
    for (( j=1; j<=i; j++ ))
    do
        echo -n "$k "
        k=$((k+1))
    done

    echo ""
done
