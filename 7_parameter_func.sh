# Have used special parameter environment "$#" to pass value to function addem 
#!/bin/bash
#
addem() {

	if [ $# -eq 0 ] || [ $# -gt 2 ]
	then
		echo -1
	elif [ $# -eq 1 ]
	then
	echo $[ $1 + $1 ]
        else
	echo $[ $1 + $2 ]
	fi
}

echo -n "Adding the two numbers 10 and 5 : "
value=$( addem 10 5 )
echo $value
echo -n "Adding the same number with itself by passing number 5 to addem:"
value=$( addem 5 )
echo $value
echo -n " No number is passing to addem : "
value=$( addem )
echo $value
echo -n " testing that what addem do if we pass 2,3,4 numbers to it : "
value=$( addem 2 3 4 )
echo $value
echo " script ended here...."
