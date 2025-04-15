#!/bin/bash
#
badfile() {
 echo $[ $1 * $2 ]

}

if [ $# -eq 2 ]
then 
	value=$(badfile)
	echo " The result is : $value "
else
	echo " Usage: badfile1 a b"
fi

