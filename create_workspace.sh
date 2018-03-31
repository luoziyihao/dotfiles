sudo chown -R ` who |head -n 1|awk '{print($1)}'` /usr/local
mkdir -p ~/Works/MY_PROJECT
mkdir -p ~/Works/OPEN_SOURCE
mkdir -p ~/Works/Qunar
mkdir -p ~/Works/hk
mkdir -p ~/WorkTemp

cd ~/Works/MY_PROJECT/

git clone https://github.com/luoziyihao/shellManage.git 
cd ./shellManage
 ln -fs $(pwd)/p /usr/local/bin/por
 ln -fs $(pwd)/r /usr/local/bin/rer
 ln -fs $(pwd)/kills.sh /usr/local/bin/ks

alias vpncc="sudo vpnc-connect"
alias fcps="gaa && gcmsg 'force push' &&ggpush"

git config --global user.email "wangyiraoxiang@163.com"
git config --global user.name "xiang.rao"

cd
curl -L https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
