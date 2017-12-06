#########################################################################
# File Name: newServer.sh
# Author: raoxiang
# mail: xiangrao@qilin99.com
# Created Time: 2016-12-17
#########################################################################
#!/bin/bash
# sudo vim /etc/apt/sources.list

# base environment
cd
sudo apt-get update
sudo apt-get install git
git clone git@github.com:luoziyihao/dotfiles.git
cd ./dotfiles
git config --global credential.helper store
git checkout purge
./set_env.sh

# java environment
cd 
sudo mkdir /data
sudo cd /data
sudo mkdir /usr/local/share/jvm/
sudo cd /usr/local/share/jvm

# scp java lib from local

# mvn 
cd
sudo apt-get install mvn

# nginx
sudo apt-get install nginx

# node # if failed , use root user
cd 
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
source ~/.zshrc
command -v nvm
nvm install node
nvm use node

# jekins
mkdir -p /data/tools
#scp jenkins lib
# sudo dpkg -i *.deb
# apt-get -f install
# add plugin
# SSH plugin # gitplugin
# add ssh # ssh-keygen -t rsa # cp ~/.ssh/* /var/lib/jenkins/.ssh/
# add build webhook
# 
