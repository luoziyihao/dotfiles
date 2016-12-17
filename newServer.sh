#########################################################################
# File Name: newServer.sh
# Author: raoxiang
# mail: xiangrao@qilin99.com
# Created Time: 2016-12-17
#########################################################################
#!/bin/bash
# sudo vim /etc/apt/sources.list

# base environment
apt-get update
apt-get install git
git clone git@github.com:luoziyihao/dotfiles.git
cd ./dotfiles
git config --global credential.helper store
git checkout purge
./set_env.sh

# java environment
mkdir /data
cd /data
mkdir /usr/local/share/jvm/
cd /usr/local/share/jvm

# scp lib from local

