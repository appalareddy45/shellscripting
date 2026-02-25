#!/bin/bash
#script to display network interface and default route and its ip address
interface=eth1
echo "Displaying the network interface"
#interface_id=ifconfig | grep "$interface" | awk '{ print $1 }' | cut -d ":" -f1
ifconfig | grep "$interface" | awk '{ print $1 }' | cut -d ":" -f1
#echo "The interface-id is : $interface_id"
echo "Displaying the ipaddress and broadcast id for the interface $interface"
#ipaddress=ifconfig "$interface" | grep inet | awk '{ print $1,$2,$3,$4 }'
ifconfig "$interface" | grep inet | awk '{ print $1,$2,$3,$4 }'
#echo "The below are the ipaddress and the broadcast address for the interface $interface"
#echo "$ipaddress"
