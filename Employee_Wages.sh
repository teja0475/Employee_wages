#!/bin/bash

echo "Welcome to employee wage computation program"

full_time=2
half_time=1
absent=0
rate_per_hour=20
full_time_hours=8
half_time_hours=4
total_working_days=0
total_emp_hours=0
emp_working_days=20
Day=0

function empWorkHour()
{

case  $1 in
       1)emp_work_hour=4;;
       2)emp_work_hour=8;;
             *)emp_work_hour=0;;

esac

echo $emp_work_hour
}


function dailyEmpWage()
{
	emp_work_hour=$1
	daily_emp_wage=$(( $rate_per_hour * $emp_work_hour ))
	echo $daily_emp_wage
}


while (( $total_working_days < 20 && $total_emp_hours < 100 ))
do

	((total_working_days++))
        check=$((RANDOM%3))
        if [[ $check -eq 2 ]]
        then
                get_hours=2

        elif [[ $check -eq 1 ]]
        then
                get_hours=1
        else
                get_hours=0

        fi

	emp_hours="$( empWorkHour $get_hours )"
	total_emp_hours=$(( $total_emp_hours + $emp_hours ))
	emp_daily_wage="$( dailyEmpWage $emp_hours )"
	monthly_emp_wage=$(($monthly_emp_wage + $emp_daily_wage))



((Day++))
echo "$Day---------->$emp_daily_wage---------->$monthly_emp_wage"

done


