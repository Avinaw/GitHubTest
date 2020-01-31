#!/bin/bash 
source install_vsftp.sh
source standard_config.sh
user=$(user_verification)
check_service=$(check_service)
check_os=$(check_os)

ufw allow 21/tcp
ufw allow 20/tcp
ufw allow 990/tcp
ufw allow 40000:50000/tcp

if [ "$user" == "root" ]
then
    echo "check_service"
    if [ "$check_service" == "0" ]  
    then 
        start_service 
        standard_config
        
    else
        echo "check_os"
       if [ "$check_os" == "debian" ]
       then
          echo "in_cehck_os"
          for_debian
          start_service
          standard_config

      else
          echo "in_centos"
          for_centos
          start_service
          standard_config
      fi
    fi
else 
    echo "Please run as Root user"
fi

