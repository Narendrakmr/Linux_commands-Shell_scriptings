#! /bin/bash

read -p "Enter number" fn

if [ $((fn)) == 0 ]
then
        echo "Neither even nor odd"
elif [ $((fn%2)) == 0 ]
then
        echo "Number is even"
else
        echo "Number is odd"
fi



