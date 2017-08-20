#!/usr/bin/env bash

echo "Install MySQL"

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password netcat'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password netcat'
sudo apt-get -y install mysql-server mysql-client

# Set Timezone (Server/MySQL)
sudo ln -sf /usr/share/zoneinfo/UTC /etc/localtime
sudo mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql --user=root --password=netcat mysql

sudo service mysql restart 

echo "Create database"

mysql -uroot -pnetcat -e "create database netcat character set utf8 collate utf8_general_ci;"
