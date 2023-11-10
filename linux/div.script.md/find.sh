#!/bin/bash

# Accept directory path and filename from the user

read -p "Enter the directory path (or press Enter for default '/'): " dirPath
read -p "Enter the filename to search for: " fileName

# Set default directory if not provided

dirPath=${dirPath:-"/"}

# Check if the directory exists

if [ -d "$dirPath" ]; then
    # Find the file
    foundFiles=$(find "$dirPath" -name "$fileName")

    # Check if any files were found
    if [ -n "$foundFiles" ]; then
        echo "File '$fileName' found in directory '$dirPath':"
        echo "$foundFiles"
    else
        echo "File '$fileName' not found in directory '$dirPath'."
    fi
else
    echo "Directory path '$dirPath' not found or invalid."
fi
