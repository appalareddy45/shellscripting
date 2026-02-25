#!/bin/bash
#scipt to check the syatem update and display it in human readable format
sys_uptime=$(uptime -p)
echo "The system uptime in human readable format"
echo "$sys_uptime"
