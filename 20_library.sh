#!/bin/bash

addem() {
   echo $[ $1 + $2 ]
}

multem() {
   echo $[ $1 * $2 ]
}

divem() {
if [ $2 -ne 0 ]
then
	echo $[ $1 / $2 ]
else
	echo -1
fi
}
subem() {
echo $[ $1 - $2 ]
}

modem() {
echo $[ $1 % $2 ]
}


