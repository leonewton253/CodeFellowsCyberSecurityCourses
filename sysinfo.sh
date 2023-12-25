#!/bin/bash

# Script Name:                  sysinfo
# Author:                       Leo Newton
# Date of latest revision:      12/24/2023
# Purpose:                      Print out system information.

# Declaration of variables

# Declaration of functions


# Main
# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root or with sudo!" >&2
    exit 1
fi

# Function to display component information
display_component() {
    local component=$1
    local keywords=("${@:2}")
    echo "----------------------------------"
    echo "  $component Information"
    echo "----------------------------------"
    lshw -class $component | grep -E "(${keywords[*]})"
    echo ""
}

# Define keywords for each component
cpu_keywords=("product:|vendor:|physical id:|bus info:|width:")
ram_keywords=("description:|physical id:|size:")
display_keywords=("description:|product:|vendor:|physical id:|bus info:|width:|clock:|capabilities:|configuration:|resources:")
network_keywords=("description:|product:|vendor:|physical id:|bus info:|logical name:|version:|serial:|size:|capacity:|width:|clock:|capabilities:|configuration:|resources:")

# Display the name of the computer
echo "Computer Name: $(hostname)"
echo ""

# Display CPU, RAM, Display Adapter, and Network Adapter information
display_component "processor" "${cpu_keywords[@]}"
display_component "memory" "${ram_keywords[@]}"
display_component "display" "${display_keywords[@]}"
display_component "network" "${network_keywords[@]}"

# End
