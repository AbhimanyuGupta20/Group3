#!/bin/bash


#Merge the sorted small files into one large sorted file
#Convert the merged sorted file to one called countsOfWords
export LC_ALL=C
sort -m plays_* | uniq -c | sort -r >countsOfWords


#File Cleanup

rm -rf *.txt
