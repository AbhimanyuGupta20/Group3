#!/bin/bash

# Check if an input file was provided
if [ $# -lt 1 ]; then
  echo "Usage: $0 input_file"
  exit 1
fi

input_file="$1"

# Convert all letters to lowercase
tr '[:upper:]' '[:lower:]' < "$input_file" > output.txt

echo "Output written"
