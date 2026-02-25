#!/bin/bash
#schedule a script (/opt/uptime.sh) to run every sunday at 01:00AM using cron
echo "scheduling a script to to the crontab" 
crontab -l > mycron
echo "0 1 * * 0 /opt/uptime.sh" >> mycron
crontab mycron
rm -rf mycron
echo "successfully set the crontab"

