#!/bin/bash

read -p "enter a word to be checked =" str

reverse=$(echo $str | rev)

if [ "$str" = "$reverse" ]
then
echo "$str is a palindrome."
else
echo "$str is not a palindrome."
fi

