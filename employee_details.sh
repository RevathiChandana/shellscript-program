#! /bin/bash 
is_part_time=1;
is_full_time=2;
max_hrs_in_month=10;
emp_rate_per_hr=20;
num_working_days=20;
total_emp_hr=0;
total_working_days=0;
while [[ $total_emp_hr -lt $max_hrs_in_month && $total_working_dys -lt $num_working_days ]]
do
        ((total_working-days++))
        emp_check=$((RANDOM%3));
        case $emp_check in
                $is_full_time)  emp_hr=8;;
                $is_part_time)  emp_hr=4;;
                *)      emp_hr=0;;
        esac
        total_emp_hr=$(($total_emp_hr+$emp_hr))
done
total_salary=$(($total_emp_hr+$emp_rate_per_hr))
echo "total salary : " $total_salary
