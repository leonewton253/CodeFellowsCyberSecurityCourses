#!/bin/bash

# Script Name:                  arraydirectory
# Author:                       Leo Newton
# Date of latest revision:      12/13/2023
# Purpose:                      Create Directories with an array, place a text file in each directory.

# Declaration of variables

# Declaration of functions


# Main

# Create four directories
mkdir dir1 dir2 dir3 dir4

# Load each directory path into an array
dir_array=(dir1 dir2 dir3 dir4)

# Create a new .txt file within each directory using array indices
for i in {0..3}; do
    touch "${dir_array[$i]}/file_$i.txt"
done

# End
