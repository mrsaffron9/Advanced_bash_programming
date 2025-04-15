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
memory(){
clear
cat /proc/meminfo
}
menu() {
clear
	echo -e "\t\t\tSys Admin Menu\n"
	echo -e "\t1. Display disk space"
	echo -e "\t2. Display logged on users"
	echo -e "\t3. Display memory usage"
	echo -e "\t0. Exit program\n\n"
	echo -en "\t\tEnter option here: "
	read -n 1 option 
}

while [ 1 ]
do 
	menu
	case $option in 
		0) break ;;
		1) diskspace ;;
	        2) loggedon ;;
	        3) memory ;;
	        *) 
		clear
	        echo " Sorry! no option is avaliable.. " ;;
	esac	
	echo -en "\n\n\t\t\tHit any key to continue"
	read -n 1 option
done
clear


