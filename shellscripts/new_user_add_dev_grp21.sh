#!/bin/bash
#script to create a new user devuser with home directory and add them to the developers group.
user=devuser2
group=developers2
echo "creating user $user"
useradd  "$user"
if grep -ie ^"$group" /etc/group ; then
   echo "user: $user is adding to the group: $group"
   usermod -aG "$group" "$user"
else
   echo "group: $group is not created and hence creating the group and adding user: $user to that group $group"
   groupadd "$group"
   usermod -aG "$group" "$user"
fi 

