#!/bin/bash
#
diskspace() {
clear 
df -k
}

loggedon() {
clear
who
}

memory() {
clear
cat /proc/meminfo
}

PS3="Enter the option: "
select option in "Display disk space" "Display who logged on" "Display memory usage" "Exit"
do
  case $option in
	  "Exit") break ;;
	  "Display disk space") diskspace ;;
	  "Display who logged on") loggedon ;;
	  "Display memory usage") memory ;;
	  *) 
		  clear
		  echo " Sorry! no option avaliable.." ;;
	  esac
  done
  clear
