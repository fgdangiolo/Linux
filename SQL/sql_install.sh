#!/bin/bash

#Source for visiting: 
#https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-22-04

echo "======================="
echo "Update and Upgrade..."
echo "======================="

sudo apt-get update
sudo apt-get upgrade -y

echo "======================"
echo "Installing SQL..."
echo "======================"

#1) Install mysql-server:
sudo apt install mysql-server


#2) Start the mysql service:

sudo systemctl start mysql.service

#***Executing mysql****
#sudo mysql

#*****Then run the following ALTER USER command to change the root user’s authentication method to one that uses a password. The following example changes the authentication method to mysql_native_password:***** Attention, the pass is: "password"
#ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

#*****After making this change, exit the MySQL prompt:***
#exit

#mysql -u root -p

#********Then go back to using the default authentication method using this command:****
#ALTER USER 'root'@'localhost' IDENTIFIED WITH auth_socket;

#*****Run 
#sudo mysql


