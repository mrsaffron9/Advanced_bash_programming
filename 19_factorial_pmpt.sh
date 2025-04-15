
#!/bin/bash

factorial() {

	if [ $1 -eq 1 ]
	then
		echo 1
	else
		local val=$[ $1 - 1 ]
		local result=$(factorial $val)
		echo $[ $result * $1 ]
	fi
}

read -p " enter the value : " value
result=$(factorial $value)
echo " the factorial value is : $result"
