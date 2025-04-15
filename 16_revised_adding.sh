#!/bin/bash

pass() {
local sum=0
local local_array
local_array=$@
for value in ${local_array[*]}
do
	sum=$[ $sum + $value ]
done
echo $sum
}

global_array=(1 2 3 4 5)
echo " global array is : ${global_array[*]}"
result=$(pass "${global_array[@]}")
echo "the result is : $result"

