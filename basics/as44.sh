#! /bin/bash

arr=()
for ((i=0; i<5; i++ ))
do
read  arr{[$i]}
echo $arr
done
