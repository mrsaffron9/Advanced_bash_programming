#!/bin/bash

count=1

reusage() {
    echo " this function has used for the first time here..."
}

while [ $count -le 5 ]
do
	reusage
	count=$(($count + 1))
done
reusage() {
   echo " this function is again used to override the input value without the error..."
}

reusage
echo " the script is ended.."
