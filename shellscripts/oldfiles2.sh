#!/bin/bash
# script to delete files which are older than 3 days in /tmp directory
SRC="/tmp"
OLD_FILES=( $(find /tmp -type f -mtime +3) )

for file in "${OLD_FILES[@]}"; do
    if [ -f "$file" ]; then
       echo "removing file $file" 
       rm -rf "$file"
    else
       echo "$file"
    fi
done
      

