#!/usr/bin/env bash

sudo apt-get install -q -y python g++ make git
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g nodemon
sudo npm install -g express
sudo npm install -g gulp
sudo npm install -g gm
sudo npm install -g grunt-cli

