#!/bin/bash

file1=$(mktemp -t test.XXXXXX)
file2=$(mktemp -t test1.XXXXXX)

diskspace() {

	df -k > $file1
	zenity --text-info --title "Disk Space" --filename=$file1 --width 1000 --height 200
}

loggedin() {
who > $file1
zenity --text-info --title "Login User" --filename=$file1 --width 100 --height 200
}
memory() {
cat /proc/meminfo > $file1
zenity --text-info --title "memory usage" --filename=$file1 --width 1000 --height 200
}

while [ 1 ]
do
	zenity --list --radiolist --title "System Admin Menu" --column "Select" --column "Menu Item" FALSE "Display diskspace" False "Display login User" False "Display Memory Usage" FALSE "Exit" > $file2
	if [ $? -eq 1 ]
	then
		break
	fi
	option=$(cat $file2)
	case $option in 
		"Display diskspace") diskspace ;;
		"Display login User") loggedin ;;
		"Display Memory Usage") memory ;;
		"Exit") break ;;
		*) 
			zenity --info "Sorry, Option is not available..."
			esac
		done
		rm -f $file1 2> /dev/null
		rm -f $file2 2> /dev/null
