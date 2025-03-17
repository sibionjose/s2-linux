#!/bin/bash

calculate_salary()
{
emp_no=$1
emp_name=$2
basic_salary=$3

if [ $basic_salary -gt 5000 ]; then
   HRA=$((basic_salary * 18 / 100))
else
   HRA=550
fi

 DA=$((basic_salary * 35 / 100))
 PF=$((basic_salary * 13 / 100))
 TA=$((basic_salary * 10 / 100))
 
 gross_salary=$((basic_salary + HRA + DA + TA))
 net_salary=$((gross_salary - PF))
 echo "Employee Number: $emp_no"
 echo "Employee Name: $emp_name"
 echo "Basic Salary: $basic_salary"
 echo "HRA: $HRA"
 echo "DA: $DA"
 echo "PF: $PF"
 echo "TA: $TA"
 echo "Gross Salary: $gross_salary"
 echo "Net Salary: $net_salary"
 
 echo "$emp_no,$emp_name,$basic_salary,$HRA,$DA,$PF,$TA,$gross_salary,$net_salary" >> Emp
 }
 read -p "Enter Employee Number:" emp_no
 read -p "Enter Employee Name:" emp_name
 read -p "Enter Basic Salary:" basic_salary
 
 calculate_salary $emp_no "$emp_name"$basic_salary
 echo "Employee details stored in Emp_Data.txt"
 }
