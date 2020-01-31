#!/bin/bash
  standard_config()
    
  {
    echo "Do you want standard configuration"
    read -r ans
    if [ "$ans" == "yes" ]
    then
          sed -i 's/anonymous_enable=YES/anonymous_enable=NO/g' /etc/vsftpd.conf
          sed -i 's/local_enable=NO/local_enable=YES/g' /etc/vsftpd.conf
          sed -i 's/ssl_enable=NO/ssl_enable=YES/g' /etc/vsftpd.conf
          echo "write_enable=YES" >> /etc/vsftpd.conf

          echo " standard configurations done"

          echo " Do you want specific user to acces through ftp"
          read -r ans1
          if [ "$ans1" == "yes" ]
          then
            cd /etc/
            echo "enter username"
            read -r username
            echo "$username" >> /etc/vsftpd.allowed_users
            echo "userlist_enable_deny=NO" >> /etc/vsftpd.conf
            echo "userlist_enable=YES" >> /etc/vsftpd.conf
            echo "userlist_file=/etc/vsftpd.allowed_users" >> /etc/vsftpd.conf
            sudo  systemctl vsftpd restart
        fi
      fi
}
