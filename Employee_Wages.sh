#!/bin/bash
echo "Welcome to employee wage computation program"

check=$((RANDOM%3))

if [[ $check == 2 ]]
then
	echo "Employee is present full time"
elif [[ $check == 1 ]]
then
	echo "Employee is present half time"
else
	echo "Employee is absent"
fi
