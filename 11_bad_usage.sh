#!/bin/bash
bad() {
temp=$[ $value + 5 ]
result=$[ $temp * 2 ]
}

temp=4
value=6
bad
echo " The result is $result"
if [ $temp -gt $value ]
then
	echo " temp is greater than value"
else
	echo " temp is smaller than value"
fi

