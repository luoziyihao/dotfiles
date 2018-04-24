#!/bin/bash
#########################################################################
# File Name: tmp.sh
# Author: raoxiang

MY_HOME=${HOME}
DOTFILES=${MY_HOME}"/dotfiles"

ln -fs ${DOTFILES}"/.start.sh.hk" ${MY_HOME}"/.start.sh.hk"
ln -fs ${DOTFILES}"/.start.sh.com.private" ${MY_HOME}"/.start.sh.com.private"
