#!/bin/bash

read -p "Enter the employee name ? " EmpName
read -p "Enter the employee Id ?" EmpId 
read -p "Enter the employee salary ? " EmpSalary 

echo "Employee Name $EmpName"
echo "Employee Id $EmpId"

if [ "$EmpSalary" -gt 50000 ]
then 
	echo "Senior Employee"
else
	echo "Junior Employee"
fi 







