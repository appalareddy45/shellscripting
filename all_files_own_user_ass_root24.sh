#!/bin/bash
#script to find all files owned by deleted user and reassigned to root
user=johndoe
if find /home/johndoe -name "^$user" ; then
   echo "changing ownership for the files owned by $user to root"
   chown -R root:root /home/johndoe
else
   echo "No files are present for the user $user"
fi

