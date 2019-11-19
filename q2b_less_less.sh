#! /bin/sh
#q2b_less_less.sh


line=$(ps -al| grep "$UID" | grep "less" | grep -v "q2b_less_less.sh" | awk '{print $4}' | wc -l)
zero=1
if [ $line -gt $zero ]; then
	kill $( ps -al| grep "$UID" | grep "less" | grep -v "q2b_less_less.sh" | awk '{print $4}' ) 
fi


# Will check if there are any processes of Less running from my user with if statement
# Will return processes that are running and pipe it to grep
# Will return processes that involve less
# will return processes that do not involve "q2b_less_less.sh"
# will return the 3rd column
# will kill processes in the third column
