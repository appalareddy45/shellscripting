#!/bin/bash
#script to take daily backup of /etc/nginx to /var/backups/nginx_configs
SRC="/etc/nginx"
DEST="/var/backups/nginx_configs"
DATE=$(date +'%Y%m%d')
tar -cvzf nginx_configs_"$DATE".tar.gz "$SRC"
if [ -d "$DEST" ]; then
   echo "Directory /var/backups/nginx_configs already created"
else
   echo "Creating Directory $DEST"	
   mkdir -p "$DEST"
fi

mv nginx_configs_"$DATE".tar.gz "$DEST"
echo "moved tar file successfully to '$DEST' directory"
