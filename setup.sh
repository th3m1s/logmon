#!/bin/sh -x

mkdir -p /etc/logmon
cp ./logmon.pl /etc/logmon/
cp ./logmon.conf /etc/logmon/
cp ./logmon /etc/init.d/logmon

chmod 700 /etc/init.d/logmon
chmod 700 /etc/logmon/logmon.pl
chmod 600 /etc/logmon/logmon.conf

update-rc.d logmon start 99 3 4 5
service logmon restart
