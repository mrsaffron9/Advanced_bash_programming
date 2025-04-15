#!/bin/bash

count=1
echo " this is before the function defined."
function insert {
	echo " this is inside the function."

}

while [ $count -le 5 ]
do
	insert
	count=$(($count + 1))
done

echo " the loop has end here..."


echo " the script is ended.."

inert() { 
	echo " this is the second function."
}

inert
