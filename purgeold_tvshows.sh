#!/bin/bash

# Get the root directory of the script and append /tvshows to it
root="$(dirname "$(readlink -f "$0")")/tvshows"

# Enable nullglob to ensure globs expand to an empty list if no matches are found
shopt -s nullglob

# For each directory in the root directory
for dir in "$root"/*/; do
    # Initialize flag to check for .strm files
    contains_strm=false

    # Check for .strm files in subdirectories
    for file in "$dir"/*/*.strm; do
        if [ -e "$file" ]; then
            contains_strm=true
            break
        fi
    done

    # Check for .strm files directly in the directory
    for file in "$dir"/*.strm; do
        if [ -e "$file" ]; then
            contains_strm=true
            break
        fi
    done

    # If the directory contains .strm files, do nothing
    if [ "$contains_strm" = true ]; then
        echo "Contains .strm files: $dir"
    else
        # If the directory does not contain .strm files, delete it
        echo "Does not contain .strm files: $dir"
        rm -rfv "$dir"
    fi
done
