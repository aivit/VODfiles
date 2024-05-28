#!/bin/bash

# Get the absolute path of the 'movies' directory
root=$(dirname "$(dirname "$0")")/movies

# Check if 'movies' directory exists
if [ ! -d "$root" ]; then
    echo "Error: 'movies' directory not found."
    exit 1
fi

# For each directory in the root directory
for dir in "$root"/*/; do
    # Count the number of .strm files in the current directory
    count=$(find "$dir" -maxdepth 1 -type f -name "*.strm" | wc -l)
    
    # If there are no .strm files
    if [ "$count" -eq 0 ]; then
        echo "Does not contain .strm files: $dir"
        rm -rfv "$dir"
    else
        echo "Contains .strm files: $dir"
    fi
done
