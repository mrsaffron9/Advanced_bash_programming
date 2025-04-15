#if dialog tool not install in your system.
#You can install as sudo apt install dialog -> Ubuntu
#!/bin/bash
#
file=$(mktemp -t check.XXXXXX)
file2=$(mktemp -t check2.XXXXXX)
diskspace() {
df -k > $file
dialog --textbox $file 20 60
}

loggedin() {
who > $file
dialog --textbox $file 20 50
}
memory() {
cat /proc/meminfo > $file
dialog --textbox $file 20 60
}

while [ 1 ]
do 
	dialog --menu "System Admin Menu" 20 30 10 1 "Display disk space" 2 "display who logged in" 3 "Display memory usage" 0 "Exit" 2> $file2
	if [ $? -eq 1 ]
	then
		break
	fi
	selection=$(cat $file2)
	case $selection in
		1) diskspace ;;
		2) loggedin ;;
		3) memory ;;
		0) break ;;
		*) 
			dialog --msgbox "Sorry! option is not avaliable..." 10 30
			esac
		done
               rm -f $file1 2> /dev/null
               rm -f $file2 2> /dev/null	       
