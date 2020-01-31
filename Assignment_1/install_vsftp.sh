#!/bin/bash
for_debian(){
        sudo apt-get install vsftpd
        echo "successfully installed by apt-package "
}
for_centos(){
        sudo yum install vsftpd
        echo "successfully installed by yum"
}

check_service(){
    status_vsftd=$(service vsftpd status)
    echo "$status_vsftpd" | grep -o 'not-found'
    echo $?
}

user_verification(){
    check_user=$(whoami)
    echo "$check_user"
}
start_service(){
    service vsftpd start
    echo "started the service"
}

check_os(){
    check_os_version=$(cat /etc/os-release  | grep  "ID_LIKE"  | awk -F '=' ' {print $2} ' )
     echo $check_os_version
}
