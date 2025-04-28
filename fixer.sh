#!/bin/bash

# Loop through all files in the current directory
for file in 33d84fe5*; do
  # Check if the file name starts with "33d84fe5"
  if [[ -f "$file" && "$file" == 33d84fe5* ]]; then
    # Create the new file name by replacing the prefix
    new_name="3ad85aea${file:8}"

    # Rename the file
    mv "$file" "$new_name"

    echo "Renamed $file to $new_name"
  fi
done