#!/bin/bash

# Current working directory
LRC_DIR="$PWD"

# Find all .lrc files recursively and process them
#find "$LRC_DIR" -name '*.lrc' -exec sed -i 's/\(\[\d\{2\}:\d\{2\}\.\d\{2\}\)\d\]/\1]/g' {} \;


# Loop through each .lrc file
for lrc_file in *.lrc; do
    # Use sed to remove the third millisecond digit
    sed -i 's/\(\[[0-9]\{2\}:[0-9]\{2\}\.[0-9]\{2\}\)[0-9]\]/\1]/g' "$lrc_file"
done
