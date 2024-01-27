#!/bin/bash

sed -i "s/{NAME}/${NAME}/g" /mbsync.conf
sed -i "s/{SERVER}/${SERVER}/g" /mbsync.conf
sed -i "s/{EMAIL}/${EMAIL}/g" /mbsync.conf
sed -i "s/{PASSWORD}/${PASSWORD}/g" /mbsync.conf
sed -i "s/{NAME}/${NAME}/g" /isync.cron

crontab /isync.cron

cron -r