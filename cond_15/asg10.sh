#! /bin/bash

read -p "phy marks =" phy
read -p "chem marks =" chem
read -p "maths marks =" maths
total=`expr $phy + $chem + $maths`
echo $total
if [ $maths > 65 ] && [ $phy > 55 ] && [ $chem >50 ] && [ $total > 190 ]
then
	echo "candidate is eligible"
else
	echo "candidate is not eligible"
fi
