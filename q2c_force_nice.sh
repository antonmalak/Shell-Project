#! /bin/bash
#q2c_force_nice.sh

while true; do
	line=$(ps -al | grep $UID | grep "sleep"| awk '{if ($8<5) {print $4}}' | wc -l)
	zero=0
	if [ $line -gt $zero ]; then	
		ps -al |grep $UID | grep "sleep" | awk '{if ($8<5) {print $4}}'| xargs kill
	fi
done

#if statement to check that there are processes running
# ps will find processes and pipe it to grep which will return those with the sleep keyword
# If the niceness is less than 5, will pipe the PID to xargs
# enables the process to be killed
