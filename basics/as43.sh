
#! /bin/bash

read -p "Enter integers to be checked =" x
z=0
n=0
p=0
for (( i=1; i<=x; i++ ))
do
	read num
	if [ $num -eq 0 ]
	then
                (( $z++ ))
	elif [ $num -lt 0 ]
	then
	        (( $n++ ))
	elif [ $num -gt 0 ]
	then
		(( $p++ ))
	else
		echo "enter valid integer"
	fi
done
echo -e "no of zero = $z"
echo -e "no of negative = $n"
echo -e "no of positive = $p"
