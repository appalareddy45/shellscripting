#!/bin/bash
#scipt to flush all iptables rules
echo "Flushing all firewall rules"
firewall-cmd --permanent --flush-all-rules
firewall-cmd --reload


