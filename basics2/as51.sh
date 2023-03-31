#!/bin/bash

declare -a db

function dbrecord {
    read -p "enter the rollno = " rollno
    read -p "enter the name = " name
    read -p "enter which semester = " semester
    read -p "enter the marks in sub1 = " marks1
    read -p "enter the marks in sub2 = " marks2
    read -p "enter the marks in sub3 = " marks3
    db+=("$rollno,$name,$semester,$marks1,$marks2,$marks3")
}

function delrec {
    read -p "Please enter the roll number to delete = " rollno
    for i in "${!db[@]}"
    do
        if [ "${db[$i]%%,*}" == "$rollno" ]
        then
            unset db[$i]
        fi
    done
 echo -e "$name with $rollno has been deleted "
}

function finrec {
    read -p "Please enter the roll number to find = " rollno
    for i in "${db[@]}"
    do
        if [ "${i%%,*}" == "$rollno" ]
        then
            echo "Record found:"
            echo -e "Roll number: ${i%%,*}"
            echo -e "Name: ${i#*,}"
            echo -e "Semester = $(echo $i | cut -d',' -f3)"
            echo -e "Marks for subject 1 = $(echo $i | cut -d',' -f4)"
            echo -e "Marks for subject 2 = $(echo $i | cut -d',' -f5)"
            echo -e "Marks for subject 3 = $(echo $i | cut -d',' -f6)"
            return
        fi
    done
    echo "not found"
}
function dbmenu {
    echo "select an option"
    echo "1. add entry to database"
    echo "2. delete entry from database"
    echo "3. find entry from database"
    echo "4. exit menu"
}

while true
do
    dbmenu
    read choice
    case $choice in
        1)
            dbrecord
            ;;
        2)
            delrec
            ;;
        3)
            finrec
            ;;
        4)
            exit 0
            ;;
        *)
            echo "enter valid choice from menu"
            ;;
    esac
done
