#! /bin/bash
isPartTime=1;
isFullTime=2;
empRate_PerHr=20;
emp_check=$((RANDOM%3))
case $emp_check in
        $isFullTime)    emp_per_hr=8;;
        $isPartTime)    emp_per_hr=4;;
        *)      emp_per_hr=0;;
esac
salary=$(($empRate_PerHr*$emp_per_hr))
echo " salary : " $salary

