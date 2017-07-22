sudo chown -R ` who |head -n 1|awk '{print($1)}'` /usr/local
mkdir -p ~/Works/MY_PROJECT
mkdir -p ~/Works/OPEN_SOURCE
mkdir -p ~/Works/Qunar
mkdir -p ~/WorkTemp

cd ~/Works/MY_PROJECT/
git clone git@github.com:luoziyihao/shellManage.git
cd ./shellManage
 ln -fs $(pwd)/p /usr/local/bin/por
 ln -fs $(pwd)/r /usr/local/bin/rer


git config --global user.email "wangyiraoxiang@163.com"
git config --global user.name "xiang.rao"
