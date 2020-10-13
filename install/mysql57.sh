#!/bin/bash

if  [ ! -n "$1" ] ;then
        echo "you have not input password!"
        exit -1
fi
password=$1

## download mysql yum package
wget http://repo.mysql.com/mysql57-community-release-el7-10.noarch.rpm

# install mysqll source
rpm -Uvh mysql57-community-release-el7-10.noarch.rpm

# install
yum install -y mysql-community-server

# start mysql
systemctl start mysqld.service

# check mysql status
systemctl status mysqld.service

# get temporary password
grep 'temporary password' /var/log/mysqld.log > temp_password.txt
tempPassword=`awk -F'localhost: ' '{print $2}' temp_password.txt`
rm -f temp_password.txt
echo "[test]"
echo $tempPassword  $password

# set password and remote access
mysql --connect-expired-password -uroot -p"$tempPassword" -e"set global validate_password_policy=0;set global validate_password_length=1;ALTER USER 'root'@'localhost' IDENTIFIED BY '$password';"
mysql --connect-expired-password -uroot -p"$password" -e"GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$password' WITH GRANT OPTION;FLUSH PRIVILEGES;"

# startup mysql
systemctl enable mysqld
systemctl daemon-reload

# restart mysql
service mysqld restart
