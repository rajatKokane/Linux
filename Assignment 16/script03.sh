#!/bin/bash

echo -n "Enter Path "
read path 

if [ -e $path ]
then 
	echo "$path exists"
	if [ -f $path ]
	then
		echo "$path is a file"
		echo "file size is" `ls -sh $path` 
		stat -c "number of characters = %s" $path 
	else
		echo "$path is a directory"
	fi

else
	echo "$path does not exist."
fi
