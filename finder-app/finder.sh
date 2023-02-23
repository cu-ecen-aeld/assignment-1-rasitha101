#!/bin/bash

if [ $# -ne 2 ]; then
        echo "parameters are not specified."
	echo "expecting argument 1 as  - path to directory on the filesystem and argument 2 as - text string which will be searched within these files"
	exit 1
fi

filedir=$1
searchstr=$2

if [ ! -d "$filedir" ]; then
       echo "directory $filedir doesn't exist"
       exit 1
fi   

file_num=$(find "$filedir" -type f | wc -l)
str_num=$(grep -r "$searchstr" "$filedir" |wc -l)

echo "The number of files are $file_num and the number of matching lines are $str_num" 
