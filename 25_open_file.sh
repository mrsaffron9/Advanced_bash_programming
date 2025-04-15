
#!/bin/bash

file1=$(mktemp -t test.XXXXXX)
file2=$(mktemp -t test2.XXXXXX)

global() {
	cat 10_globally.sh > $file1
	dialog --textbox $file1 20 80
}
lvar() {
	cat 12_local_variable.sh > $file1
	dialog --textbox $file1 20 80
}
gmenu() {
	cat 24_graphical_menu.sh > $file1
	dialog --textbox $file1 20 80
}

while [ 1 ]
do
	dialog --menu "Favorite File Explorer" 20 40 10 1 "Display global file" 2 "Display local file" 3 "Display Graphical menu file" 0 "Exit" 2>$file2
	if [ $? -eq 1 ]
	then
		break
	fi
	opener=$(cat $file2)
	case $opener in 
		1) global ;;
		2) lvar ;;
		3) gmenu ;;
		0) break ;;
		*) 
	        dialog --msgbox "Sorry, Option is not available.." 10 30		;;
		esac
	done

	rm -f $file1 2> /dev/null
	rm -f $file2 2> /dev/null

