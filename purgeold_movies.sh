#!/bin/bash
root=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )/movies" &> /dev/null && pwd )
# Make globs null if there's no match.
shopt -s nullglob
# For each dir in the root dir
for dir in "$root"/*/; do
    # Get array of .strm files.
    files=("$dir"*.strm)
    # If the array is not empty
    if [[ ${#files[@]} -ne 0 ]]; then
        echo "Contains .strm files: $dir"
            else
        echo "Does not contain .strm files: $dir"
		rm -rfv "$dir"  
    fi
done
