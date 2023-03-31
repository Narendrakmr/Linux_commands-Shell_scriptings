#! /bin/bash

row=4

for ((i=1;i<=row;i++))
do
  for ((j=1;j<=i;j++))
  do
    echo -n "$((j+(i-1)*i/2))"
  done
  echo ""
done

