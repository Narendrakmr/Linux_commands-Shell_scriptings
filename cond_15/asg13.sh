#!/bin/bash

read -p "input the temperature in centigrade = " t

if [ $t -lt 0 ]; then
    echo "Freezing weather"
elif [ $t -ge 0 ] && [ $t -le 10 ]
 then
    echo "Very Cold weather"
elif [ $t -gt 10 ] && [ $t -le 20 ]; then
    echo "Cold weather"
elif [ $t -gt 20 ] && [ $t -le 30 ]; then
    echo "Normal"
elif [ $t -gt 30 ] && [ $t -le 40 ]; then
    echo "Hot"
else
    echo "Its Very Hot"
fi
