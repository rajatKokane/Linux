#!/bin/bash

echo -n "Enter a mobile number : "
read mobile

for mob in 
	if [[ $mobile | egrep "^(0|/+91)[0-9]{10}$" ]]
	then
		echo "$mobile is valid"
	else
		echo "$mobile is invalid"
	fi
