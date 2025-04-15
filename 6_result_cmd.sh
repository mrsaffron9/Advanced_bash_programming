#!/bin/bash
function db {
read -p " Enter the value: " value
echo $[ $value *2 ]
}

result=$(db)
echo " the new value is : $result"

