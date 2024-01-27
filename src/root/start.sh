#!/bin/sh

sed -i "s/{NAME}/${NAME}/g" /mbsyncrc.conf
sed -i "s/{SERVER}/${SERVER}/g" /mbsyncrc.conf
sed -i "s/{EMAIL}/${EMAIL}/g" /mbsyncrc.conf
sed -i "s/{PASSWORD}/${PASSWORD}/g" /mbsyncrc.conf
sed -i "s/{NAME}/${NAME}/g" /etc/crontabs/root

crond -f -d 8