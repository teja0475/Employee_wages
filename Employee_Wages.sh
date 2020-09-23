#!/bin/bash

echo "Welcome to employee wage computation program"
read -p "Max working days(value be >=20): " max_days
full_time=2
half_time=1
absent=0
rate_per_hour=20
full_time_hours=8
half_time_hours=4
total_working_days=0
total_emp_hour=0


function dailyEmpWage()
{
	emp_work_hour=$1
	daily_emp_wage=$(( $rate_per_hour * $emp_work_hours ))
	echo $daily_emp_wage
}


while (( $total_working_days < $max_days ))
do

	((total_working_days++))
	check=$((RANDOM%3))
	if [[ $check == $full_time ]]
	then
		emp_work_hours=$full_time_hours
	elif [[ $check == $half_time ]]
	then
		emp_work_hours=$half_time_hours

	else
		emp_work_hours=$absent

	fi



emp_daily_wage="$( dailyEmpWage $emp_work_hours )"
echo $emp_daily_wage

done

