# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
 ZSH_THEME="robbyrussell"
# ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colorize git extract z web-search vi-mode themes tmux)

# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#alias start
#
alias cdw="cd ~/Works/"
alias cddc="cd ~/Documents/"
alias cddl="cd ~/Downloads/"
alias cdt="mkdir -p ~/WorkTemp/ && cd ~/WorkTemp/"
alias cds="cd ~/Works/MY_PROJECT/shellManage"
alias cdlog="cd /usr/local/share/tomcat/default/logs"
alias cdjvm="cd /usr/local/share/jvm/default/bin"
alias cdsql="cd ~/Documents/WYHL/sql"
alias sshpro="ssh root@123.56.68.94" 
alias sshtst="ssh root@500win.cn"
alias sshone="ssh ubuntu@52.78.225.9"
alias sshtwo="ssh 'root@123.56.6.229'"
# alias sshadd="ssh-copy-id 'root@123.56.6.229'"
# alias mysql="mysql -uroot"
alias mysql="mysql -uroot -p123"
alias vr="vim -R "
# pdf reader
alias pdf="evince"
# colorize
alias catt="colorize"
# libreoffice
alias ofc="libreoffice"
# mkd
alias mkd="retext"
alias cdnutch_l="/usr/local/share/nutch/apache-nutch-1.10-src/apache-nutch-1.10/runtime/local/bin"
alias nrun="npm run"
alias emacs="emacs -nw"
alias lispbox="/usr/local/share/lisp/lispbox/default/lispbox.sh"
alias nodes="node --harmony"
alias topdf="home/luoziyihao/Downloads/wkhtmltox/bin/wkhtmltopdf "
alias cr="mkdir -p /tmp/empty && rsync --delete-before  -aHv --progress  --stats /tmp/empty/ "
alias dudu="ls -a  |sed -e '/^.$/d' -e '/^..$/d' | xargs -i du -ms {}|sort -n |tee "/tmp/.capacity.`date  "+%Y-%m-%d_%H-%M-%S"`.log""
alias jude="java -jar /usr/local/share/jude/default/jude-community.jar  > /dev/null &"
alias idea="nohup /usr/local/share/idea/default/bin/idea.sh >> /tmp/idea.log 2>&1 &"
#alias end
#
# environment start
#set default editor
export EDITOR=/usr/bin/vi

export JAVA_HOME=/usr/local/share/jvm/default
export CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
# set JAVA_HOME FRONT to explace the default java version
export PATH=$JAVA_HOME/bin:$PATH

export GOROOT=/usr/local/share/go/go
export GOPATH=/usr/local/share/go/gopackage
export PATH=$PATH:$GOROOT/bin/:$GOPATH/bin

export PATH=$PATH:/usr/local/share/mongodb/default/bin

export APACHE_SOLR_HOME=/usr/local/share/solr/solr-4.10.4/solr-4.10.4
export NUTCH_RUNTIME_HOME=/usr/local/share/nutch/apache-nutch-1.10-src/apache-nutch-1.10/runtime/local
export TESSDATA_PREFIX=/usr/local/share/tessdata

export PATH=/usr/local/n/versions/node/defalut/bin:$PATH

# environment end
#
# script start
#
#echo $PASSWORD  | sudo -S xxx $1
#ibus-daemon -d -x -r
#切换到vi模式
# set -o vi
#切换到emacs模式
#set -o emacs  
#PASSWORD=rxsgsjb111

#set dircolors_solarized
MY_HOME=${HOME}
# 在对目录做阮链接的时候也不要用 '/', 尤其是目的的目录不要接'/'
dircolors_solarized_dest=$MY_HOME"/.dir_colors"
# set  dircolors
# mk dircolorsdb
eval `dircolors ${dircolors_solarized_dest}`

source ${MY_HOME}/start.sh
# script start end

# export NVM_DIR="$HOME/.nvm"
# export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm



export  M3_HOME=/usr/local/share/mvn/default/bin
