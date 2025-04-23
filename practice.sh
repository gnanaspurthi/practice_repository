#!/bin/bash

# Function to display the current month's calendar
display_calendar() {
    echo "📅 Calendar for $(date +'%B %Y')"
    cal
}

# Function to show a specific month and year
show_calendar() {
    read -p "Enter month (1-12): " month
    read -p "Enter year (YYYY): " year
    echo "📅 Calendar for $month/$year"
    cal $month $year
}

# Function to get today's date
get_today() {
    echo "Today's date is: $(date +'%A, %B %d, %Y')"
}

# Main menu
while true; do
    echo -e "\nCalendar App"
    echo "1. Show current month"
    echo "2. Show specific month/year"
    echo "3. Get today's date"
    echo "4. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1) display_calendar ;;
        2) show_calendar ;;
        3) get_today ;;
        4) echo "Goodbye!"; exit ;;
        *) echo "Invalid option, please try again." ;;
    esac
done
