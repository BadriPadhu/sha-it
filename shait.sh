#!/bin/bash 

if [ ! $# -eq 1 ]; then
	echo "Please provide the path text file";
	exit
fi

file="$1"
while read line
do
	sha1sum "$line" | awk '{print $2", "$1}' 
	
done < "$file"
