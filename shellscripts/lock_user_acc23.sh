#!/bin/bash
#script to lock user account (johndoe) and notify user
user="johndoe"
#usermod -L "$user"
if who | grep -q "^$user" ; then
   echo "Your account is locked please contact admin" | write "$user"
fi
usermod -L "$user"
