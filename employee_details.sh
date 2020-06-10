#! /bin/bash 
is_part_time=1;
is_full_time=2;
empRatePerHr=20;
random_check=$((RANDOM%3));
if [ $is_full_time -eq $random_check ]
then
        empHrs=8;
elif [ $is_part_time -eq $random_check ]
then
        empHrs=4
else
        empHrs=0
fi
salary=$(($empHrs*$empRatePerHr))
echo "salary : " $salary

