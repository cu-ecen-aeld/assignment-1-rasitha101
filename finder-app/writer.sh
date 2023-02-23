#!/bin/bash

writefile=$1
writestr=$2

file=$(basename $writefile)
dir=$(dirname $writefile)
echo $file
echo $dir

if [ $# -ne 2 ]; then
	echo "parameters were not specified"
	echo "expecting asrgument 1 as - full path to the file including file name on the filesystem and argument 2 as - text string which will ne written within the file"
	exit 1
fi

if [ -f "$writefile" ]; then
	echo "$writefile exists"
	echo "$writestr" >> $writefile
else
	mkdir -p $dir
	touch $writefile
	echo "$writestr" >> $writefile
fi

