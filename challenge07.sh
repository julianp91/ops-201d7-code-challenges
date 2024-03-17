#!/bin/bash

# Script Name:                  ops201-challenged07-system-information
# Author:                       julian pena
# Date of latest revision:      03/15/2024
# Purpose:                      display system information
# resources:                    https://chat.openai.com/c/57b212f9-3fdd-4b59-8d62-cf26f5eeef53

# Declaration of variables
info(){
    read -p "Do you want the name of the computer (yes/no):" answer
    if [[ $answer == "yes" ]]; then 
    echo "name of the computer: "$(lshw | grep "" -m1)
    fi
    read -p "Do you want the cpu info? (yes/no):" answer
    if [[ $answer == "yes" ]]; then
    echo "cpu info: "$(lshw | grep "*-cpu" -A 6)
    fi 
    read -p "Do you want the ram info? (yes/no):" answer
    if [[ $answer == "yes" ]]; then
    echo "ram info: "$(lshw -class memory | grep -A 4 "System Memory")
    fi
    read -p "Do you want the display adapter info? (yes/no):" answer
    if [[ $answer == "yes" ]]; then
    echo "display adapter info: "$(lshw -class display | grep -A 11 "display")
    fi 
    read -p "Do you want network adapter info? (yes/no):" answer
    if [[ $answer == "yes" ]]; then
    echo "network adapter info: "$(lshw -class network | grep -A 15 "network")
    fi

}
info 

# Declaration of functions


# Main



# End