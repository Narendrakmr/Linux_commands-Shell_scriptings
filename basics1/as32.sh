#! /bin/bash

read -p "Enter the basic salary = " ba

 dp=$(expr 0.5*"$ba" | bc)
 a=$(expr "$ba"+"$dp" | bc)
 da=$(expr 0.35*"$a" | bc)
 hra=$(expr 0.08*"$a" | bc)
 ma=$(expr 0.03*"$a" | bc)
 pf=$(expr 0.1*"$a" | bc)

 salary=$(expr "$ba"+"$dp"+"$da"+"$hra"+"$ma"-" $pf" | bc)

echo -e "Total salary = $salary" 

