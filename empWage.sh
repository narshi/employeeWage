#! /bin/bash -x

echo "Welcome to Employee Wage Calculation"
declare -a empAttendance
for ((i=0;i<=20;i++))
do
	ran=`expr ${RANDOM:0:1} \/ 5`
	empAttendance[$i]=$ran
done
echo "${empAttendance[@]}"
