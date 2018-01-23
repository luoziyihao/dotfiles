#!/bin/bash
# start.sh v0.2

mount_data(){
    mount_dir=/data/ext
    detect_mount_file=${mount_dir}/detect_mount_file
    if ls ${detect_mount_file} > /dev/null 2>&1
    then
       # echo "Works has exists" 
    else
        # mount disk, add soft link under ${soft_link_dir} 
        echo "start mount and create soft_link" 
        password="rxsgsjb111"
        who=` who |head -n 1|awk '{print($1)}'`
        mount_disk=/dev/sda2
        soft_link_dir=${HOME}/ext

        echo ${password} | sudo -S mkdir -p ${mount_dir} > /dev/null
        sudo mount ${mount_disk}  ${mount_dir} 
        sudo chown ${who} ${mount_dir} 
        rm -rf ${soft_link_dir}
        ln -fs ${mount_dir} ${soft_link_dir}
        touch ${detect_mount_file}

        
        # soft link home_sub directory
        new_home_path=${mount_dir}/home2
        new_home_sub_arr=("Downloads" "Documents" "Pictures" "Music" "Videos" "Works")
        for dir_tmp in ${new_home_sub_arr[@]};
        do
            mkdir -p ${new_home_path}/${dir_tmp}
            rm -rf ${HOME}/${dir_tmp}
            ln -fs ${new_home_path}/${dir_tmp} ${HOME}/${dir_tmp}
        done

        echo "end mount and create soft_link" 
    fi
}

create_soft_dir(){
    who=` who |head -n 1|awk '{print($1)}'`
    # add check for file's owner
    # sudo chown -R ${who} /usr/local 
    # chmod 755 -R /usr/local 

    soft_dir_arr=(jvm tomcat idea)
    soft_dir_pre=/usr/local/share
    for dir_tmp in ${soft_dir_arr[@]};
    do
        mkdir -p ${soft_dir_pre}/${dir_tmp}
    done
}

# start script start

##################### export start #####################
# Load pyenv automatically by adding
# the following to ~/.zshrc:

# pyenv
# export PATH="/home/luoziyihao/.pyenv/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# export PYTHON_CONFIGURE_OPTS="--enable-shared"
##################### export end #####################

##################### alias start #####################
alias vpncc="sudo vpnc-connect"
alias fcps="gaa && gcmsg 'force push' &&ggpush"
##################### alias end #####################

##################### command start #####################
mount_data
create_soft_dir
##################### command end #####################
