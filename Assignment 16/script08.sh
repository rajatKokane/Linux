#!/bin/bash

echo "Enter a number to get its table"
read num

for i in {1..10}
do
	result=$(expr $num \* $i)
	echo "$result"
done
