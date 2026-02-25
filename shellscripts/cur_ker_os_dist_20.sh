#!/bin/bash
#script to display the current kernel version and OS distribution
ker_version=$(uname -r)
os_version=$(cat /etc/redhat-release)
echo "The current kernel version is: $ker_version"
echo "The redhat version is: $os_version"
