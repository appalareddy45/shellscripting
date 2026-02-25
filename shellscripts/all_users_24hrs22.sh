#!/bin/bash
#script to list all users who have logged in within last 24 hrs
users=$(last -s -1days | awk '{print $1}'| grep -v wtmp)
echo "$users"
##########################
