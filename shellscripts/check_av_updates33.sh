#!/bin/bash
#script to check available updates
updates=$(yum check-update | egrep -i "base|extras|updates")
if [ -n "$updates" ]; then
   echo "updates are present"
   yum update -y
   sleep 30
   echo "system is rebooting...."
   reboot
else
   echo "updates are not present"
fi
