#! /bin/bash

read -p "Enter the Principal =" p
read -p "Enter the rate =" r
read -p "enter the time =" t

simple_int=`expr $p \* $r \* $t / 100`
 
echo -e "The simple interest = $simple_int"
