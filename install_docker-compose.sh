#!/bin/bash
################################################################################
#
#  Ubuntu 16.04 Server
#-------------------------------------------------------------------------------
# USAGE:
#
# odoo-install
#
# 
# ./install_docker-compose 
#
################################################################################

echo -e "\n---- Install Docker-CE ----"

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update


sudo apt-get install docker-ce

sudo apt-get curl

echo -e "\n---- Install Docker-compose ----"

curl -L https://github.com/docker/compose/releases/download/1.23.0-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

sudo docker -v
sudo docker-compose -v

echo -e "\n---- Install Finish ----"
