#!/bin/bash


#Merge the sorted small files into one large sorted file
sort -m plays_* | uniq -c >countsOfWords

#Convert the merged sorted file to one called countsOfWords
