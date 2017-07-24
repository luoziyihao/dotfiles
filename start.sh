#!/bin/bash
# start.sh v0.1

# Load pyenv automatically by adding
# the following to ~/.zshrc:

# pyenv
# export PATH="/home/luoziyihao/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# export PYTHON_CONFIGURE_OPTS="--enable-shared"

# mount for ext
# export PATH=/usr/local/n/versions/node/7.10.0/bin:${PATH}
 
# if cd /home/luoziyihao/Works > /dev/null 2>&1
# then
#    echo "Works has exists" 
# else
#     echo "rxsgsjb111" | sudo -S mkdir -p /data/ext
#     sudo mount /dev/sdb1   /data/ext
# 
#     sudo rm -rf /home/luoziyihao/ext
#     sudo ln -fs /data/ext /home/luoziyihao/ext
#     sudo rm -rf /home/luoziyihao/Documents
#     sudo ln -fs /data/ext/home2/Documents /home/luoziyihao/Documents
# 
#     sudo mkdir -p /data/work
#     sudo mount /dev/sda13   /data/work
#     sudo rm -rf /home/luoziyihao/Works
#     sudo ln -fs /data/work/Works /home/luoziyihao/Works
# 
#     sudo chown luoziyihao /data/work
#     sudo chown luoziyihao /data/ext
# fi

VPNGRP=q_vpn_tech
VPNUSER=xiang.rao
VPNURL=https://qunarvpn.corp.qunar.com

alias fcps="gaa && gcmsg 'force push' &&ggpush"
