#!/bin/bash

echo "Enter number"
read num

if [ $num -eq 0 ]
then
	echo "num is zero"
	elif [ $num -gt 0 ]
	then
		echo "$num is positive"
		else "$num is negative"
	fi



