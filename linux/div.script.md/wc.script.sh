#!/bin/bash

# Accept file path from the user

read -p "Enter the file path: " filePath

# Check if the file exists

if [ -f "$filePath" ]; then
    # Print file details
    echo "File: $filePath"
    echo "Number of Words: $(wc -w < "$filePath")"
    echo "Number of Lines: $(wc -l < "$filePath")"
    echo "Number of Characters: $(wc -c < "$filePath")"
else
    echo "File not found."
fi
