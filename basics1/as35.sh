#! /bin/bash

read -p "enter sub1 marks = " sub1
read -p "enter sub2 marks = " sub2
read -p "enter sub3 marks = " sub3

sum=`expr $sub1 + $sub2 + $sub3`
percent=`expr $sum / 3`

if [ $percent -ge 50 ]
then
	echo "First Division"
elif [ $percent -ge 40 ] && [ $percent -le 50 ]
then
	echo "Second Division"
else

		echo "Fail"
fi  
