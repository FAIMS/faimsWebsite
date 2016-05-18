#!/bin/bash
set -ueo pipefail

sudo rm -f /etc/apt/sources.list.d/jon-severinsson-ffmpeg-trusty.list 
sudo add-apt-repository ppa:mc3man/trusty-media -y

sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get install ntp 
sudo service ntp stop
sudo ntpd -gq
sudo service ntp start

sudo service god stop
sudo service apache2 stop
cd /var/www/faims
git reset --hard HEAD
git checkout production
sed -i 's/webapp_user: faims/webapp_user: ubuntu/g' /var/www/faims/puppet/data/common.yaml 
sed -i 's/app_tag: master/app_tag: production/g' /var/www/faims/puppet/data/common.yaml 


sudo mv /etc/apache2/conf-enabled/faims.conf .
gem uninstall passenger passenger-install-apache2-module passenger-install-nginx-module passenger-config passenger-status passenger-memory-stats -ax
gem install passenger -v 5.0.15
passenger-install-apache2-module -a
sudo rm -f /etc/apache2/passenger
sudo ln -s /home/ubuntu/.rbenv/versions/2.1.1/lib/ruby/gems/2.1.0/gems/passenger-5.0.15 /etc/apache2/passenger
sudo mv faims.conf /etc/apache2/conf-enabled/
sudo reboot

