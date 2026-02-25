#!/bin/bash
#script to display all the failed messages in /var/log/audit/audit.log
echo "Displaying all the failed error messages in the audit log"
SRC="/var/log/audit/"

result=$(grep -rni failed $SRC)

echo "$result"
