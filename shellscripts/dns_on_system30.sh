#!/bin/bash
#DNS server ipaddresses configured on the system
echo "DNS server ip addresses configured on the system"
ipaddress=$(cat /etc/resolv.conf | awk 'NR > 1 {print $2}') 
echo "$ipaddress"
