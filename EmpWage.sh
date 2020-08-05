#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

isPresent=$((RANDOM%2))
if [ $isPresent == 0 ]
then
   echo "The Employee is absent"
else 
   echo "The Employee is present"
fi