#! /bin/bash

read -p "Enter number" fn

if [ $((fn)) == 0 ]
then
        echo "Neither positive nor negative"
elif [ $fn -gt 0 ]
then
        echo "Number is positive"
else
        echo "Number is negative"
fi



