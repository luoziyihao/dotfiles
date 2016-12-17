#########################################################################
# File Name: newServer.sh
# Author: raoxiang
# mail: xiangrao@qilin99.com
# Created Time: 2016-12-17
#########################################################################
#!/bin/bash
# sudo vim /etc/apt/sources.list
apt-get update
apt-get install git
git clone git@github.com:luoziyihao/dotfiles.git
cd ./dotfiles

mkdir /data
cd /data
wget http://download.oracle.com/otn-pub/java/jdk/8u111-b14/jdk-8u111-linux-x64.tar.gz
mkdir /usr/local/share/jvm/
mv jdk-8u111-linux-x64.tar /usr/local/share/jvm/
cd /usr/local/share/jvm
