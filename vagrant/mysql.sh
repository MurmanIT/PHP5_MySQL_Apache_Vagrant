#!/usr/bin/env bash

echo "Install MySQL"

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password qwerty1'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password qwerty1'
sudo apt-get -y install mysql-server mysql-client

# Set Timezone (Server/MySQL)
sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime
sudo mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql --user=root --password=qwerty1 mysql

sudo service mysql restart 

echo "Create database"

mysql -uroot -pqwerty1 -e "create database mydatabase character set utf8 collate utf8_general_ci;"
