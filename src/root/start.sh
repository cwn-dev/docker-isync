#!/bin/sh

# Replace variables in /home/app/mbsyncrc.conf
sed -i "s/{NAME}/${NAME}/g" /home/app/mbsyncrc.conf
sed -i "s/{SERVER}/${SERVER}/g" /home/app/mbsyncrc.conf
sed -i "s/{EMAIL}/${EMAIL}/g" /home/app/mbsyncrc.conf
sed -i "s/{PASSWORD}/${PASSWORD}/g" /home/app/mbsyncrc.conf

# Replace variables in /root/mysync_cron
sed -i "s/{NAME}/${NAME}/g" /home/app/mbsync_cron

supercronic /home/app/mbsync_cron