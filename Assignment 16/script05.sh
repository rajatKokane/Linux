#!/bin/bash

echo "Enter 3 numbers"
read num1 num2 num3

max=0

if [ $num1 -gt $max ]
then
    max=$num1
    if [ $num2 -gt $max ]
    then
        max=$num2
		if [ $num3 -gt $max ]
		then
			max=$num3
		fi
    fi
fi

echo "$max is the greatest number"

