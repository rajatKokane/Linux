#!/bin/bash

echo -n "Enter file path : "
read path

if [ -f $path ]
then
	stat -c "last modified : %y" $path
else
	echo "path is not valid"
fi 
