#!/bin/bash

function gitm {
    h_code=$(tail -n +2 item.dat | cut -d',' -f1 | sort -n | tail -n 1)

    if [ -z "$h_code" ]
    then
        io=1
    else
        io=$(expr $h_code + 1)
    fi

    echo $io
}

function add_entry {
    io=$(g_code)

    echo "Item code: $io"
    echo  "Quantity sold"
    read item_sold
    echo -n "rate = "
    read rate

    while [ $rate -lt 100 ] || [ $rate -gt 10000 ]
    do
        echo -n "Rate = "
        read rate
    done

    echo "$io,$item_sold,0,$rate" >> item.dat

    echo "added the entry of item"
}

while true
do
    echo "select an option:"
    echo "1. Add record"
    echo "2. Exit"

    read choice

    case $choice in
        1)
            add_entry
            ;;
        2)
            exit 0
            ;;
        *)
            echo "invalid choice"
            ;;
    esac
done
