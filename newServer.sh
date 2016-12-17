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
apt-get update
apt-get install git
git clone git@github.com:luoziyihao/dotfiles.git
cd ./dotfiles
git config --global credential.helper store
git checkout purge
./set_env.sh

# java environment
cd 
mkdir /data
cd /data
mkdir /usr/local/share/jvm/
cd /usr/local/share/jvm

# scp java lib from local

# mvn 
cd
apt-get install mvn


# nginx
apt-get install nginx

# node
cd 
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
source ~/.zshrc
command -v nvm
nvm install node
nvm use node
