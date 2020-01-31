#! /bin/bash
ostype=$(cat /etc/os-release | head -n 4 | tail -n 1 | awk -F "=" '{print $2}')
myname=$(whoami)
echo "INSTALLATION"
ifexists=$(which vsftpd| wc -l)
if [ "$ifexists" -eq 1 ]
   then
   echo "vsftpd ALREADY INSTALLED"

           case $ostype in
                   "debian") echo "Do you wish to upgrade(y)/cancel(c)?"
                             read activity
                                  case $activity in
                                     "y") apt-get upgrade vsftpd
                                          ;;
                                     "c") exit
                                          ;;
                                       *) echo "INVALID ARGUMENT"
                                          ;;
                                  esac
                              ;;
                         *) echo "Do you wish to upgrade(g)/update(d)/cancel(c)?"
                                  read activity
                                       case $activity in
                                          "g") yum upgrade vsftpd
                                               ;;
                                          "d") yum update vsftpd
                                               ;;
                                          "c") exit
                                               ;;
                                            *) echo "INVALID ARGUMENT"
                                               ;;
                                       esac
                                   ;;
              esac

else

echo $ostype;
     if [ "$ostype"=="debian" ]
     then
      apt-get install vsftpd -y
   else
      yum -y install vsftpd
   fi

   status=$(sudo ufw status)

   if [ "$status"=="ufw: command not found" ]
   then
   ufw allow 20/tcp
   ufw allow 21/tcp
   ufw allow 990/tcp
   ufw allow 40000:50000/tcp
   fi


   echo "CONFIGURING vsftpd"

   cat /etc/vsftpd.conf > testfile
   sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf
   sed -i 's/#chroot_local_uset=YES/chroot_local_user=YES/g' /etc/vsftpd.conf
   echo "user_sub_token=$USER" >> /etc/vsftpd.conf
   echo "local_root=/home/$USER/ftp" >> /etc/vsftpd.conf
   echo "pasv_min_port=40000">> /etc/vsftpd.conf
   echo "pasv_max_port=50000">> /etc/vsftpd.conf
   echo "userlist_enable=YES">> /etc/vsftpd.conf
   echo "userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf
   echo "userlist_deny=NO" >> /etc/vsftpd.conf
   echo "root" |tee -a /etc/vsftpd.userlist
   systemctl restart vsftpd

fi


