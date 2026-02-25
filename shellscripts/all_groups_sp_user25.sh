#!/bin/bash
#list all groups to a specific user
user=johndoe
echo "Listing all groups to a user: $user"
groups "$user"
