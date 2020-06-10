#! /bin/bash
is_part_time=1;
is_full_time=2;
max_hrs_in_month=4;
emp_rate_per_hr=20;
num_working_days=20;
total_emp_hrs=0;
total_working_days=0;
declare -A daily_wage
function getWorkingHours()
{
        case $1 in
                $is_full_time)  work_hrs=8;;
                $is_part_time)  work_hrs=4;;
                *)      work_hrs=0;;
        esac
        echo $work_hrs
}
function getEmpWage()
{
        local empHr=$1
        echo $(($empHr*$emp_rate_per_hr))
}
while [[ $total_emp_hrs -lt $max_hrs_in_month &&
         $total_working_days -lt $num_working_days ]]
do
        ((total_working_days++))
        emp_check=$((RANDOM%3))
        work_hrs=`getWorkingHours $emp_check `
        total_emp_hrs=$(( $total_emp_hrs+$work_hrs ))
        daily_wage[$total_working_days]=$( getEmpWage $work_hrs )
done
echo "total woring hours : " $total_emp_hrs
total_salary=$(($total_emp_hrs*$emp_rate_per_hr))
echo "total salary : " $total_salary
echo "dailywage : " ${daily_wage[@]}
echo "keys : " ${!daily_wage[@]}

