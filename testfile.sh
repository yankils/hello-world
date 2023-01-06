#!/bin/bash

# Check if a filename was provided
if [ $# -eq 0 ]
then
    echo "Error: No filename provided"
    exit 1
fi

# Search for the file
result=$(find . -name $1)

# Check if the file was found
if [ -z "$result" ]
then
    echo "Error: File not found"
    exit 1
else
    echo "File found: $result"
    exit 0
fi
