#!/bin/bash

# Script Name:                  dirloop
# Author:                       Leo Newton
# Date of latest revision:      12/21/2023
# Purpose:                      Search Directories with an array, place a text file if not found.

# Declaration of variables

# Declaration of functions


# Main
# Prompt the user to enter the names of files and directories to check, separated by spaces
read -p "Enter the names of files and directories to check (separated by spaces): " -a items_to_check

# Loop through each item in the array
for item in "${items_to_check[@]}"; do
    # Check if the item is a file
    if [[ "$item" == *".txt" ]]; then
        # Conditional to check if the file exists
        if [ -f "$item" ]; then
            echo "File $item already exists."
        else
            echo "File $item does not exist. Creating..."
            touch "$item"  # Create the file if it does not exist
        fi
    # Assume the item is a directory if it's not a file
    else
        # Conditional to check if the directory exists
        if [ -d "$item" ]; then
            echo "Directory $item already exists."
        else
            echo "Directory $item does not exist. Creating..."
            mkdir "$item"  # Create the directory if it does not exist
        fi
    fi
done

echo "Operation completed."
# End
