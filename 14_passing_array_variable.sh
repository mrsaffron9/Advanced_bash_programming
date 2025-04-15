
#!/bin/bash
pass() {
	echo " the parameters are : $@"
local local_array
local_array=$@
echo " the local_array value is : ${local_array[*]}"
}

global_array=(1 2 3 4 5 6)
echo " the global array value is : ${global_array[*]}"
pass ${global_array[*]}
