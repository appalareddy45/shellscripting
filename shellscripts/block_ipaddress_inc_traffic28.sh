#!/bin/bash
#script to block an IP address (192.168.1.100) using iptables/firewalld for incoming connections
ipaddress=192.168.56.14
echo "blocking the ipaddress: $ipaddress"
sudo firewall-cmd --permanent --add-rich-rule="rule family='ipv4' source address='$ipaddress' drop"
sudo firewall-cmd --reload
echo "Checking if firewalld service is enabled or not"
output_service=$(systemctl status firewalld)
if echo "$output_service" | grep -qi "active (running)"; then
   echo "firewalld service is running"
   echo "ipaddress successfully blocked"
else
   echo "starting the firewall service"
   systemctl restart firewalld
   output_service=$(systemctl status firewalld)
   if echo "$output_service" | grep -qi "active (running)"; then
      echo "firewalld service is running"
   else
      echo "cannot restart the firewalld service"
   fi
fi


