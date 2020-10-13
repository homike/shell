#!/bin/sh

# install
yum -y install redis

# open remote access
sed -i 's/bind 127.0.0.1/#bind 127.0.0.1/g' /etc/redis.conf

sed -i 's/protected-mode yes/protected-mode no/g' /etc/redis.conf

# restart
service redis restart
