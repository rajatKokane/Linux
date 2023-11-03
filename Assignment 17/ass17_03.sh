#!/bin/bash

while true; do
	echo -n "Enter the month in numbers (1-12) or by name (jan-dec). Enter 13 to exit: "
	read month

	case $month in
		1|3|5|7|8|10|12|jan|mar|may|jul|aug|oct|dec)
			days=31
			echo "Days in $month are $days."
			cal -m $month
			;;
		2|feb)
			days="28 or 29"
			echo "Days in $month are $days."
			cal -m $month
			;;
		4|6|9|11|apr|jun|sep|nov)
			days=30
			echo "Days in $month are $days."
			cal -m $month
			;;
		13)
			echo "Exiting the script."
			break
			;;
		*)
			echo "Invalid input. Please enter a valid month number or name."
			;;
	esac
done

