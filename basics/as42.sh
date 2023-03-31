#! /bin/bash

read -p "enter the first number = " num1
read -p "select the operator (*/+/-//) = " opr
read -p "enter the second number = " num2
echo "operator is $opr" 
if [ "$opr" = "*" ]
then
   echo "inside mult"
   result=`expr $num1 \* $num2`
else
   result=`expr $num1 $opr $num2`
fi
echo -e "result = $result"

