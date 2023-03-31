#!/bin/bash
read -p "Enter the path of directory = " path
for i in $PATH
do
    if [ -f "$i" ] && [ ! -s "$i" ]
    then
       sudo rm -r "$i"
    fi
    echo "files have been deleted"
done

