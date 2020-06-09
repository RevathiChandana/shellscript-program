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
full_day_hours=8
Daily_emp_wage=$(($wage_per_hr*$full_day_hours))
echo "Daily employee wage : " $Daily_emp_wage
part_time_hours=4
echo "part time employee wage : " $(($wage_per_hr*$part_time_hours))
