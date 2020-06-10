#! /bin/bash
echo "welcome to employee wage computation"
isPresent=$(( RANDOM%2 ))
wage_per_hr=20
full_day_hours=8
if [ $isPresent == 0 ]
then
        echo "Employee is Present"
	Daily_emp_wage=$(($wage_per_hr*$full_day_hours))
	echo "Daily employee wage : " $Daily_emp_wage
else
        echo "Employee is not Present"
fi

