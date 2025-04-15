#!/bin/bash


val1=5
val2=2
res1=$(addem $val1 $val2)
res2=$(multem $val1 $val2)
res3=$(divem $val1 $val2)
res4=$(subem $val1 $val2)
res5=$(modem $val1 $val2)
echo the result of adding them is : $res1
echo the result of multiplying them is : $res2
echo the result of dividing them is : $res3
echo the result of subtracting them is : $res4
echo the result of modulus them is : $res5
