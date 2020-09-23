#!/bin/bash
echo "Welcome to employee wage computation program"

full_time=2
half_time=1
absent=0

check=$((RANDOM%3))

if [[ $check == $full_time ]]
then
	echo "Employee is present full time"
elif [[ $check == $half_time ]]
then
	echo "Employee is present half time"
else
	echo "Employee is absent"
fi
