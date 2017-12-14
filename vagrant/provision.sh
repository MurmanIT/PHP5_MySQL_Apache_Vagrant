#!/usr/bin/env bash


echo "Update system"

sudo apt-get update -y
sudo apt-get upgrade -y

echo "Helper tools"

sudo apt-get install -y vim curl wget build-essential python-software-properties mc checkinstall build-dep imagemagick 

echo "Encoding"

sudo locale-gen ru_RU.UTF-8
sudo sed -i "s/en_US.UTF-8/ru_RU.UTF-8/g" /etc/default/locale

echo "Installing"

source /vagrant/install.sh
source /vagrant/node.sh
source /vagrant/mongo.sh
source /vagrant/redis.sh
source /vagrant/nginx.sh