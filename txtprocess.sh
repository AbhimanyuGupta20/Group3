#!/bin/bash                                                                     

# Check if an input file was provided                                           
if [ $# -lt 1 ]; then
  echo "Usage: $0 input_file"
  exit 1
fi

input_file="$1"

# Convert all letters to lowercase and remove punctuation, then make each word appear on a new line and remove blank lines, and sort the words
tr '[:upper:]' '[:lower:]' < "$input_file" | sed -e 's/[[:punct:]]/ /g' | sed 's/[ \t]/\n/g' | grep -vE '^\s*$' | sort > output.txt

# Write the sorted output back to the input file
cat output.txt > "$input_file"

echo "Output written to $input_file"
