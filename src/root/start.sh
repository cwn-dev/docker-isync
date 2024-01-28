#!/bin/sh

# Add our 5 minute periodic folder to run isync
echo "*/5   *   *   *   *   run-parts /etc/periodic/5min" >> /etc/crontabs/root

# Replace variables in /mbsyncrc.conf
sed -i "s/{NAME}/${NAME}/g" /mbsyncrc.conf
sed -i "s/{SERVER}/${SERVER}/g" //mbsyncrc.conf
sed -i "s/{EMAIL}/${EMAIL}/g" /mbsyncrc.conf
sed -i "s/{PASSWORD}/${PASSWORD}/g" /mbsyncrc.conf

# Replace variables in /etc/periodic/5min/mbsync.sh
sed -i "s/{NAME}/${NAME}/g" /etc/periodic/5min/mbsync.sh

#chown -R app /mail_data

crond -f -d 8