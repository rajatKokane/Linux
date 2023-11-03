#!/bin/bash

echo "Enter file names"
read path1 path2

if [ -f "$path1" ] && [ -f "$path2" ]
then
    cat "$path2"
    sort -n "$path1" | rev
else
    echo "One or both of the files do not exist."
fi

