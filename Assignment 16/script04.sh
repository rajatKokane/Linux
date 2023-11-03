#!/bin/bash

echo -n "Enter number : "
read num

i=2
while [ $i -lt $num ]
do
	if [ `expr $num % $i` -eq 0 ]
	then
		echo "$num is not a prime number"
		break
	fi

	i=`expr $i + 1`
done

if [ $i -eq $num ]
then
	echo "$num is prime"
fi

