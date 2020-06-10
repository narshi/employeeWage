#! /bin/bash -x

echo "Welcome to Employee Wage Calculation"
declare -a empAttendance
for ((i=0;i<=20;i++))
do
	ran=`expr ${RANDOM:0:1} \/ 5`
	empAttendance[$i]=$ran
done
echo "${empAttendance[@]}"

	echo "Enter Method of salaty hourly/daily/monthly"
	read Wage
	if [ $isPresent == 1 ]
	then
		case "$Wage" in
			"daily")
				dSalary=`expr $wPhr \* $workHour \* 20`
				echo "$dSalary"
			;;
			"monthly")
				mSalary=`expr $wPhr \* $workHour \* 12`
				echo "$mSalary"
			;;
			"hourly")
				hSalary=`expr $wPhr \* $workHour`
				echo "$hSalary"
			;;
			*)
				echo "Employee not exists"
			;;
		esac
	else
		echo "Employee not exists"
	fi
fi
