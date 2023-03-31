#!/bin/bash

if ! [ -r file1 ]
 then
    echo "file1 does not have read permission"
    exit 1
fi


if [ -e file2 ]
 then
    read -p "file2 already exists. Do you want to overwrite it? y/n " choice
    if [ "$choice" != "y" ]
    then
        exit 0
    fi
fi

while IFS= read -r line; do
    echo "$line" >> file2
done < file1

echo "file1 copied to file2"
