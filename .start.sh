#!/bin/bash
source ~/.start.sh.local
source ~/.start.sh.com.private
source ~/.start.sh.hk
alias sshone="ssh luoziyihao@luoziyihao.com"
alias xmind="nohup /usr/local/share/xmind/xmind-8-linux/XMind_amd64/XMind > /dev/null &"
alias cdxmind="cd /usr/local/share/xmind/xmind-8-linux/XMind_amd64"
alias hktest="ssh root@test.huakai.me"
alias cdilog="cd /home/luoziyihao/.IntelliJIdea2017.2/system/tomcat/"
alias mvn3="/usr/local/share/maven/apache-maven-3.3.3/bin/mvn -s ~/.m2/settings.ali.xml "
alias vpncc="sudo vpnc-connect"
alias fcps="gaa && gcmsg 'force push' &&ggpush"

export CATALINA_BASE=/usr/local/share/tomcat/default/logs
export PATH=/usr/local/share/git_tools/bin:$PATH
export PATH=/usr/local/share/maven/default/bin:$PATH
export PATH=/usr/local/share/jvm/default/bin:$PATH
export PATH=/usr/local/share/gradle/default/bin:$PATH

# pyenv
export PATH="/home/luoziyihao/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYTHON_CONFIGURE_OPTS="--enable-shared"
# http://pyenv.qiniudn.com/pythons/
export PYTHON_BUILD_MIRROR_URL="http://pyenv.qiniudn.com/pythons/"

# 备忘

# 本地Mysql  rxsgsjb111
# 本地redis 111111
