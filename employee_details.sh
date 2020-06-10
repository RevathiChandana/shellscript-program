#! /bin/bash 
isPartTime=1;
isFullTime=2;
total_salary=0;
emp_rate_per_hr=20;
Num_working_days=20;
for (( day=1; day<=$Num_working_days; day++ ))
do
        emp_check=$((RANDOM%3));
        case $emp_check in
                $isPartTime)    emp_hr=4;;
                $isFullTime)    emp_hr=8;;
                *)      emp_hr=0;;
        esac
        salary=$(($emp_rate_per_hr*$emp_hr))
        total_salary=$(($total_salary+$salary))
done
echo "total salary : " $total_salary

