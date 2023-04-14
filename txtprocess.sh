#!/bin/bash

# Check if an input file was provided
if [ $# -lt 1 ]; then
  echo "Usage: $0 input_file"
  exit 1
fi

input_file="$1"

# Convert all letters to lowercase
#tr '[:upper:]' '[:lower:]' < "$input_file" > output.txt
#tr '[:upper:]' '[:lower:]' < "$input_file" | sed -e 's/[[:punct:]]/ /g' > output.txt
#tr '[:upper:]' '[:lower:]' < "$input_file" | sed -e 's/[[:punct:]]/ /g' | sed 's/[ \t]/\n/g' > output.txt
#tr '[:upper:]' '[:lower:]' < "$input_file" | sed -e 's/[[:punct:]]/ /g' | sed 's/[ \t]/\n/g' | grep -vE '^ +$' > output.txt
tr '[:upper:]' '[:lower:]' < "$input_file" | sed -e 's/[[:punct:]]/ /g' | sed 's/[ \t]/\n/g' | grep -vE '^ +$' > output.txt


echo "Output written"
