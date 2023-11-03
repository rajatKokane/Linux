#!/bin/bash

while true 
do
	echo "Menu:"
    echo "1. Date"
    echo "2. Cal"
    echo "3. Ls"
    echo "4. Pwd"
    echo "5. Exit"	
	echo -n "Enter your choice (1-5): " 
	read choice

    case $choice in
        1)
            date
            ;;
        2)
            cal
            ;;
        3)
            ls
            ;;
        4)
            pwd
            ;;
        5)
            echo "Goodbye!"
            exit
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac
done


