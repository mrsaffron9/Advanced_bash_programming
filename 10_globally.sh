#we can access any global variable inside or outside of a function
#here, we assigned the $value outside the function but still it is valid to call
#!/bin/bash
var() {
 value=$[ $value * 2 ]
}

read -p " Enter the value: " value
var	
echo " the new value: $value"
