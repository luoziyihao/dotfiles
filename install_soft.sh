#!/bin/bash
#########################################################################
# File Name: install_soft.sh
# Author: raoxiang
# mail: xiangrao@qilin99.com
# Created Time: 2018-03-16
#########################################################################

sudo apt-get update
sudo apt-get install git
sudo apt-get install chromium-browser 
sudo apt-get vim
sudo apt-get python-pip
sudo pip install shadowsocks
sudo pip shutter
curl -L https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
