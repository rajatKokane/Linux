#!/bin/bash

echo "Enter number"
read num

for n in { 1..$num }
do
	fact=$(expr $num \* $n)
done

echo "$fact"
