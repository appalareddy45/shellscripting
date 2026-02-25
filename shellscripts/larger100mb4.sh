#!/bin/bash
#script to find the file size which is more than 100kb
src="/var/log"
output=( $(find $src -type f -size +100k) )
#echo "${output[@]}"
for file in "${output[@]}"; do
	echo "$file"
done

