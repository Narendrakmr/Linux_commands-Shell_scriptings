#! /bin/bash

read -p "Enter your Roll number =" rol
read -p "Enter your name =" name
read -p "Enter your marks in subject 1 =" a
read -p "Enter your marks in subject 2 =" b
read -p "Enter your marks in subject 3 =" c

echo -e "Roll number = $rol"
echo -e "Name of candidate = $name"
echo -e "Subject 1 = $a"
echo -e "subject 2 = $b"
echo -e "Subject 3 = $c"

total = $a + $b + $c
perc = `expr $total / 3 * 100` 

if [ $perc > 60 ]
then
	echo "First Division"
elif [ $perc > 45 ] $$ [ $perc < 60 ]
then
	echo "Second Division"
else
	echo "Third Division"
fi
