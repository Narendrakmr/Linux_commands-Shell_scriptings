#! /bin/bash

num=4

for (( i=1; i<=$num; i++ ))
do
  
  for (( j=1; j<=$i; j++ ))
  do
    echo -n "$i"
  done
  echo ""
done
