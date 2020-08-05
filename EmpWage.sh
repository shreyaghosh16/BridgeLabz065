#!/bin/bash -x
Constants

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_WAGE_PER_HR=20
MAX_WORKING_HRS=100
NUMBER_OF_WORKING_DAYS=20


echo "Welcome to Employee Wage Computation Program on Master Branch"

isPresent=$((RANDOM%2))
if [ $isPresent == 0 ]
then
   echo "The Employee is absent"
else 
   echo "The Employee is present"
fi

function getDailyWage()
{
        local empHrs=$1
        empSalary=$((empHrs*EMP_WAGE_PER_HR))
        echo $empSalary
}

function getEmpHrs()
{
        case $empCheck in
              
                $IS_FULL_TIME)
                        #echo "Employee is Full-Time"
                        empHr=8
                ;;
                *)
                        #echo "Employee is Absent"
                        empHr=0
                ;;
        esac

        echo $empHr
}

while [[ $totalEmpHr -le $MAX_WORKING_HRS && $totalWorkingDays -le $NUMBER_OF_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3))

        empHr=$( getEmpHrs $empCheck )
        


	#Creating Dictionary(daily_emp_wage)
	daily_emp_wage["Day"$totalWorkingDays]="$( getDailyWage $empHr )"


        
done

echo "Values of daily_emp_wage Dictionary: "${daily_emp_wage[@]}
#echo "Total Wage of Emp: "$totalSalary
echo "Keys of daily_emp_wage Dictionary: "${!daily_emp_wage[@]}
