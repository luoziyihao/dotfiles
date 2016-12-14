#########################################################################
# File Name: set_env.sh
# Author: raoxiang
# mail: xiangrao@qilin99.com
# Created Time: 2016-05-19
#########################################################################
#!/bin/bash

MY_HOME=${HOME}
DOTFILES=${MY_HOME}"/dotfiles"
# 在对目录做阮链接的时候也不要用 '/', 尤其是目的的目录不要接'/'
gnome_solarized=$DOTFILES"/gnome_terminal_colors_solarized"
oh_my_zsh=$DOTFILES"/oh_my_zsh"
oh_my_zsh_dest=$MY_HOME"/.oh-my-zsh"
dircolors_solarized=$DOTFILES"/dircolors_solarized"
dircolors_solarized_dest=$MY_HOME"/.dir_colors"

if [ -d "${dircolors_solarized}" ]; then
    echo -e "\033[34m zsh cfg archive: ${dircolors_solarized} \033[0m"
else 
    echo -e "\033[31m zsh cfg archive '${dircolors_solarized}' not exists, just git clone it \033[0m"
    git clone https://github.com/seebi/dircolors-solarized.git ${dircolors_solarized}
fi

if [ -d "${oh_my_zsh}" ]; then
    echo -e "\033[34m zsh cfg archive: ${oh_my_zsh} \033[0m"
else 
    echo -e "\033[31m zsh cfg archive '${oh_my_zsh}' not exists, just git clone it \033[0m"
    git clone git://github.com/robbyrussell/oh-my-zsh.git ${oh_my_zsh}
fi

if [ -d "${gnome_solarized}" ]; then
    echo -e "\033[34m zsh cfg archive: ${gnome_solarized} \033[0m"
else 
    echo -e "\033[31m zsh cfg archive '${gnome_solarized}' not exists, just git clone it \033[0m"
    git clone https://github.com/Anthony25/gnome-terminal-colors-solarized.git ${gnome_solarized}
fi

# set origin background
dconf reset -f /org/gnome/terminal/legacy/profiles:/
# install  gnome_solarized
${gnome_solarized}"/install.sh"

# set  dircolors
# mk dircolorsdb source link
ln -fs ${dircolors_solarized}"/dircolors.ansi-light" ${dircolors_solarized_dest}

ln -fs ${DOTFILES}"/.bashrc" ${MY_HOME}"/.bashrc"
ln -fs ${DOTFILES}"/.tmux.conf" ${MY_HOME}"/.tmux.conf"
ln -fs ${DOTFILES}"/.vimrc" ${MY_HOME}"/.vimrc"
ln -fs ${DOTFILES}"/.ycm_extra_conf.py" ${MY_HOME}"/.ycm_extra_conf.py"
ln -fs ${DOTFILES}"/.zshrc" ${MY_HOME}"/.zshrc"
ln -fs ${DOTFILES}"/.npmrc" ${MY_HOME}"/.npmrc"
ln -fs ${oh_my_zsh} ${oh_my_zsh_dest}

#ok
echo "ok"
sudo ln -fs  ${DOTFILES}"/stth.sh" "/usr/local/bin/stth"
