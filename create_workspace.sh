
mkdir -p ~/Works/MY_PROJECT
mkdir -p ~/Works/OPEN_SOURCE
mkdir -p ~/Works/Qunar
mkdir -p ~/Works/hk
mkdir -p ~/WorkTemp
sudo mkdir -p /data

# 权限
sudo chown -R $(whoami) /data/
sudo chown -R  $(whoami) /usr/local
sudo chown -R  $(whoami):root  /usr/local/share/zsh
sudo chmod  -R 755  /usr/local/share/zsh


# cmd
cd ~/Works/MY_PROJECT/
shellManage=${HOME}/Works/MY_PROJECT/shellManage
if [ -d "${shellManage}" ]; then
    echo -e "\033[34m archive: ${shellManage} \033[0m"
else 
    echo -e "\033[31m archive '${shellManage}' not exists, just git clone it \033[0m"
    git clone git@github.com:luoziyihao/shellManage.git
fi


cd ./shellManage
ln -fs $(pwd)/p /usr/local/bin/por
ln -fs $(pwd)/r /usr/local/bin/rer
ln -fs $(pwd)/kills.sh /usr/local/bin/ks

# vpn
alias vpncc="sudo vpnc-connect"
alias fcps="gaa && gcmsg 'force push' &&ggpush"

# git
git config --global user.email "wangyiraoxiang@163.com"
git config --global user.name "xiang.rao"

# pyenv
sudo apt-get install curl
sudo apt-get install python-pip
sudo  pip install shadowsocks
cd
curl -L https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash


# install
sudo apt-get install tmux
sudo apt-get install aptitude
sudo apt-get install shutter
sudo apt-get install vim-gnome
sudo apt-get install chromium-browser
# comment for ubuntu 18.04
# sudo apt-get install nautilus-open-terminal
sudo apt-get install uget
sudo apt-get install aria2
sudo apt-get install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4
sudo apt-get install  ibus-sunpinyin
sudo apt-get install ibus-table-emoji
sudo ibus-daemon -d -x -r
