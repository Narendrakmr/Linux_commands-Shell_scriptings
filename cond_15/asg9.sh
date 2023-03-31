#! /bin/bash

read -p "enter the value of ordinate = " x
read -p "enter then value of absisa = " y

if [ $((x)) -eq 0 ] && [ $((y)) -eq 0 ]
then
	echo "the point lies on origin"
elif [ $((x)) -gt 0 ] && [ $((y)) -gt 0 ]
then
	echo "the point lies in first quadrant"
elif [ $((x)) -lt 0 ] && [ $((y)) -gt 0 ]
then
        echo "the point lies in second quadrant"
elif [ $((x)) -lt 0 ] && [ $((y)) -lt 0 ]
then
        echo "the point lies in third quadrant"
else
	echo "the point lies in forth quad"
fi
