#!/bin/bash

# Download Shakespeare's plays archive
wget http://shakespeare.mit.edu/shakespeare.tar.gz

# Extract archive
tar -zxvf shakespeare.tar.gz

# Concatenate all plays into one file
cat shakespeare/* > all_plays.txt

# Split large file into 5 smaller files
split -n l/5 all_plays.txt play_chunk_

# Clean up extracted files and archive
rm -rf shakespeare/ shakespeare.tar.gz
