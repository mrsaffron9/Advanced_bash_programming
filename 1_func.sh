#!/bin/bash

function deep {
 echo " this is the first function. I have created this function"

}

count=1

while [ $count -le 5 ]
do
	deep
	count=$(($count + 1))
done
deep
echo "the script is ended..."
