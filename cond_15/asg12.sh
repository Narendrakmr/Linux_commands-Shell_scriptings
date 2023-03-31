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

total=`expr $a + $b + $c`
echo -e "Total marks = $total"

perc=`expr $total / 3` 
echo -e "Percentage obtained = $perc"

if [ $perc -ge 60 ]
then
	echo "First Division"
elif [ $perc -ge 45 && $perc -lt 60 ]
then
	echo "Second Division"
else
	echo "Third Division"
fi
