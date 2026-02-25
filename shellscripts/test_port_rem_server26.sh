#!/bin/bash
#Test if port 80 and 443 are open on the remote server weberver.example.com
server=webex.example.com
port_http=80
port_https=443
echo "checking whether the port $port_http is open or not on the remote server:$server"
if telnet "$server" "$port_http" | grep -qi "connected" ; then
   echo "port $port_http is open on the remote server"
else
   echo "port $port_http is closed on the remote server"
fi

echo "checking whether the port $port_https is open or not on the remote server:$server"
if telnet "$server" "$port_https" | grep -qi "connected" ; then
   echo "port $port_https is open the remote server"
else
   echo "port $port_https is closed on the remote server"
fi
