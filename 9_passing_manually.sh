#!/bin/bash
#
goodone() {
 echo $[ $1 * $2 ]
}

if [ $# -eq 2 ]
then
	value=$(goodone $1 $2)
	echo " the result of value : $value"
else
	echo " Usage: badfile a b"
fi

