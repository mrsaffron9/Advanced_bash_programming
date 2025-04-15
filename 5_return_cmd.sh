#!/bin/bash

db() {
read -p "Enter the value: " value
echo "doubling the value."
return $[ $value * 2 ]
}

db
echo " the new value is : $?"
