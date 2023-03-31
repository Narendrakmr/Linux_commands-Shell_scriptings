#!/bin/bash

read -p "input the length of triangle = " s1 s2 s3

if [ $s1 -eq $s2 ] && [ $s2 -eq $s3 ]; then
    echo "It is an equilateral triangle."
elif [ $s1 -eq $s2 ] || [ $s1 -eq $s3 ] || [ $s2 -eq $s3 ]; then
    echo "It is an isosceles triangle."
else
    echo "It is a scalene triangle."
fi
