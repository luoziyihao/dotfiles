#########################################################################
# File Name: stth.sh 
# Author: raoxiang
# mail: xiangrao@qilin99.com
# Created Time: 2016-05-19
#########################################################################
#!/bin/bash

MY_HOME=${HOME}
backgroud=${1}
DOTFILES=${MY_HOME}"/dotfiles"
gnome_solarized=$DOTFILES"/gnome_terminal_colors_solarized"

#choose_backgroud
case ${backgroud} in
    lt)
        set_bg="light"
        echo "set light Solarized theme"
        ;;
    dk)
        set_bg="dark"
        echo "set dark Solarized theme"
        ;;
    *)
        #输入但不是 lt, dk 直接退出
        if [ "${backgroud}"x != ""x ]
        then
            echo "parameter format error, please run again"
            exit
        fi
        #不输入或者输入"" 默认为 lt
        set_bg="light"
        echo "default, set light Solarized theme"
esac

# really setting
${gnome_solarized}"/set_"${set_bg}".sh"
ln -fs ${DOTFILES}"/.vimrc_"${set_bg} ${MY_HOME}"/.vimrc"

# set  dircolors
# mk dircolorsdb source link
dircolors_solarized=$DOTFILES"/dircolors_solarized"
dircolors_solarized_dest=$MY_HOME"/.dir_colors"
ln -fs ${dircolors_solarized}"/dircolors.ansi-"${set_bg} ${dircolors_solarized_dest}

