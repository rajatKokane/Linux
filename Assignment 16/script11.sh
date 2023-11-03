#!/bin/bash

read -p "Enter basic salary:" basic

da=`echo "$basic * 0.4" | bc`
hra=`echo "$basic * 0.2" | bc`
gross_salary=`echo "$basic + $da + $hra" | bc`

echo "Gross Salary: $gross_salary"
