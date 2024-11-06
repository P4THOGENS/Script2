#!/bin/bash

options=("Display disk usage" "Show date and time" "List all running processes" "Enter the app you want to open (browser, editor, music, filemanager)" "Exit")
apps=("browser" "editor" "music" "filemanager")

option1() {
    echo "Option 1: Displaying disk usage..."
    df -h
}

option2() {
    echo "Option 2: Showing current date and time..."
    date
}

option3() {
    echo "Option 3: Listing all running processes..."
    ps aux
}

option4() {
    echo "Enter the app you want to open (e.g., browser, editor, music, filemanager):"
    read app_name

    if [[ " ${apps[@]} " =~ " ${app_name} " ]]; then
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
        esac
    else
        echo "Application not recognized. Try 'browser', 'editor', 'music', or 'filemanager'."
    fi
}

while true; do 
    echo "Please choose an option:"

    for i in "${!options[@]}"; do
        echo "$((i+1)). ${options[$i]}"
    done

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
        4)
            option4
            ;;
        5)
            echo "Exiting..."
            sleep 1
            break
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac

    echo "Press any key to continue..."
    read -n 1
done

