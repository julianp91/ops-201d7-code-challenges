#!/bin/bash

# Script Name:                  ops201-challenged05-loops
# Author:                       julian pena
# Date of latest revision:      03/15/2024
# Purpose:                      creating a loop 

# Declaration of variables
echo "current pid is: $$"
while true; do 
    read -p "enter pid to kill or ctlr c to exit" choice
    if [[ -z "$choice" ]]; then 
    break
    fi
    kill "$choice" 2>/dev/null
    done
# Declaration of functions


# Main



# End