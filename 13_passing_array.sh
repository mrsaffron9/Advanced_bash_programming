#the local array will take only first value in array list only
#!/bin/bash

pass() {

	echo " the parameter is : $@"
	local_array=$1
	echo " the received array is ${local_array[*]}"



}

global_array=(1 2 3 4 5 6)
echo "The global array is : ${global_array[*]}"
pass $global_array
