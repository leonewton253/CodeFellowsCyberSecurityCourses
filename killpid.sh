#!/bin/bash

# Script Name:                  killpid
# Author:                       Leo Newton
# Date of latest revision:      12/15/2023
# Purpose:                      Choose a process and kill it

# Declaration of variables

# Declaration of functions


# Main
while true; do
    # Display running processes
    ps -e

    # Ask the user for a PID
    echo "Enter the PID of the process to kill (or Ctrl+C to exit):"
    read pid

    # Kill the process with that PID
    kill $pid

    # Loop starts over
done
# End
