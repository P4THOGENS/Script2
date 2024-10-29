#!/bin/bash

option1()
{
	echo "Option 1: Displaying disk usage..."
	df -h
}

option2()
{
	echo "Option 2: Showing current date and time..."
	date
}

option3()
{
	echo "Option 3: Listing all running processes..."
	ps aux
}

option4()
{
	
while true; do 
	echo "Please choose an option:"
	echo "1. Display disk usage"
	echo "2. Show date and time"
	echo "3. List all running processes"
	echo "4. Enter the app you want to open (browser, editor, music, filemanager)"
	echo "5. Exit"
	read -p "Enter your choice: " choice
	
	case $choice in
	1)
		option1
		;;
	2)
		option2
		;;
	3)
		option3
		;;
		
	4)	option4
		;;
		echo "Enter the app you want to open (e.g., browser, editor, music, filemanager):"
    		read app_name

    		case $app_name in
        	"browser")
            	    xdg-open "https://www.google.com"  
            	    ;;
        	"editor")
            	    code .  
           	    ;;
        	"music")
           	    rhythmbox &  
            	    ;;
       		"filemanager")
            	    nautilus &  
                    ;;
        *)
            echo "Application not recognized. Try 'browser', 'editor', 'music', or 'filemanager'."
            ;;
    esac
	5)
		echo "Exiting..."
		sleep 1
		break
		;;
	*)
		echo "Invalid choice, please try again."
		;;Enter the app you want to open (e.g., browser, editor, music):"
	esac
	
	echo "Press any key to continue.."
	read -n 1
done
	
