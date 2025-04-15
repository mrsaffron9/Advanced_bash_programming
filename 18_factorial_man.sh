#!/bin/bash
#
factorial() {

	if [ $1 -eq 1 ]
	then
		echo 1
	else
		local val=$[ $1 - 1 ]
		local result=$(factorial $val)
		echo $[ $result * $1 ]
	fi


}
result=$(factorial $1)
echo "result is : $result"
