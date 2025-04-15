#!/bin/bash
pass() {
      local oarray
      local larray
      local component
      local v
      oarray=("$@")
      larray=("$@")
      component=$[ $# - 1 ]
      for ((v = 0; v <= $component; v++))
      {
	      larray[$v]=$[ ${oarray[$v]} * 2 ]
      }
      echo ${larray[*]}
}

garray=(1 2 3 4 5)
echo " garray is : ${garray[*]}"
rap=$(echo ${garray[*]})
result=($(pass $rap))
echo " the larray is : ${result[*]}"

