#!/bin/bash

read -p "enter the three angle of triangle = " Q1 Q2 Q3

# Calculate the sum of the angles
sum=$((Q1 + Q2 + Q3))


if [ $sum -eq 180 ]; then
    echo "The triangle is valid."
else
    echo "The triangle is not valid."
fi
