#!/bin/bash

echo -n "Enter path : "
read path
cd $path
echo -n "current path : `pwd`"
for file in `pwd`
#ls -perm /111 
do
#	if [ find $file -perm /111 ]
#	then
#	echo "$path has atleast one execute permission.  "
	find $file -perm /111

#	echo "`pwd`"
#	find $file -name "boilerplate.sh"
#	fi
done
