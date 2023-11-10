#!/bin/bash

# Accept directory path from the user
read -p "Enter the directory path: " dirPath

# Check if the directory exists
if [ -d "$dirPath" ]; then
    # Find ".java" files and count
    javaFiles=$(find "$dirPath" -name "*.java")
    fileCount=$(echo "$javaFiles" | wc -l)

    # Display file count
    echo "Number of '.java' files found: $fileCount"

    # Filter files modified in the last 10 days
    recentFiles=$(find "$dirPath" -name "*.java" -mtime -10)
    
    # Display recent files
    echo "Recent '.java' files (last 10 days):"
    echo "$recentFiles"
    
    # Delete recent files
    echo "Deleting recent '.java' files..."
    rm -f $recentFiles
else
    echo "Directory path '$dirPath' not found or invalid."
fi

