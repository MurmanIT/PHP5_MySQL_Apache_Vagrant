#!/usr/bin/env bash


echo "Install PHP"

sudo apt-get build-dep -y php5
sudo apt-get install -y libmcrypt-dev libicu-dev php5-cli gettext libgettextpo-dev libgettextpo0 libssl-dev openssl \
libfreetype6 libfreetype6-dev libpng12-0 libpng12-dev libjpeg-dev libjpeg8-dev libjpeg8  libgd-dev libgd3 libxpm4 \
libltdl7 libltdl-dev php5 php5-dev php-pear autoconf automake curl build-essential libxslt1-dev re2c libxml2 \
libxml2-dev php5-cli bison libbz2-dev libreadline-dev php5-mysql php5-curl php5-gd  php5-gmp libapache2-mod-php5


sudo rm /etc/php5/apache2/php.ini
sudo cp /vagrant/config/php/php_apache.ini /etc/php5/apache2/php.ini

# todo-me подумать как подключить phpbrew

#sudo mkdir -p /opt/phpbrew	
#sudo wget https://github.com/phpbrew/phpbrew/raw/master/phpbrew
#sudo chmod +x phpbrew
#sudo mv phpbrew /usr/bin/phpbrew

#sudo phpbrew init
#sudo phpbrew knowse
#sudo phpbrew update

# sudo phpbrew install 5.4 +default+mysql+gd+iconv+soap+fpm
# sudo phpbrew switch php-5.4.45

