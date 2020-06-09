#! /bin/bash
echo "welcome to employee wage computation"
isPresent=$(( RANDOM%2 ))

if [ $isPresent == 0 ]
then
        echo "Employee is Present"
else
        echo "Employee is not Present"
fi
wage_per_hr=20
hours_per_day=8
Daily_emp_wage=$(($wage_per_hr*$hours_per_day))
echo "Daily employee wage : " $Daily_emp_wage
