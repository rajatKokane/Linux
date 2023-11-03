#!/bin/bash

echo -n "Enter absolute path : "
read path

if [ -e "$path" ]
then
    if [ -f "$path" ]
	then
        echo $(stat -c "%A" "$path")
        echo $(stat -c "%s" "$path")
        echo $(stat -c "%U" "$path")
        
 
    elif [ -d "$path" ]; then
        # If it's a directory, show a message
        echo "This is a directory, not a file."
    else
        # The path exists but is neither a file nor a directory
        echo "$path is neither a file nor a directory."
    fi
else
    echo "$path is not valid or does not exist."
fi

