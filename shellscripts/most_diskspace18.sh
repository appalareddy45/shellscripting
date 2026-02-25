#!/bin/bash
#script to display the top 3 directories consuming the most disk space in /var
most_used=$(du -sh /var/* | sort -rh | head -3)
echo "Top three directories consuming the most disk space" 
echo "$most_used"

