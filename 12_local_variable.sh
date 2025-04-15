#!/bin/bash

lvar() {
local Message=$[ $text + 5 ]
result=$[ $Message * 2 ]
echo "this is the local message value : $Message"
}

Message=4
text=6
lvar
echo "the result is : $result"

if [ $Message -gt $text ]
then
	echo " Message is larger than text. "
else
	echo " Message is smaller than text. "
fi
echo "Global message value is : $Message"
