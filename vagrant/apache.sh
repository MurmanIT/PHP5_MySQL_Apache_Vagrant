#!/usr/bin/env bash

echo "Install apache2"

apt-get install -y apache2

a2enmod rewrite
a2enmod headers
a2enmod actions
a2enmod proxy_fcgi
a2enmod rewrite
a2enmod ssl
a2enmod vhost_alias


sudo service apache2 restart


sudo rm -f /etc/apache2/sites-available/000-default.conf
sudo rm -f /etc/apache2/sites-enabled/000-default.conf

sudo cp /vagrant/config/netcat.conf /etc/apache2/sites-available/netcat.conf

sudo ln -s /etc/apache2/sites-available/netcat.conf /etc/apache2/sites-enabled/netcat.conf 




