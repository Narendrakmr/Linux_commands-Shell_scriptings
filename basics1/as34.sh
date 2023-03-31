#! /bin/bash
read -p "enter the first num = " num1
read -p "enter the second num = " num2

sum=`expr $num1 + $num2`

if (( $num1 > $num2 ))
then
diff=`expr $num1 - $num2`
else
diff=`expr $num2 - $num1`
fi

product=`expr $num1 \* $num2`
quotient=`expr $num1 / $num2`

echo -e "sum of two entered numbers = $sum"
echo -e "Difference of two entered numbers = $diff"
echo -e "Product of two entered numbers = $product"
echo -e "Quotient of two entered numbers = $quotient"

