#!/bin/bash
iplocal=$(hostname -I)
echo "IP local do Servidor ${iplocal}"   
sudo apt-get update
sudo apt install -y mysql-server
sudo mysql_secure_installation
systemctl status mysql.service
service mysql stop
sed -i "s/.*bind-address.*/bind-address = ${iplocal}/" /etc/mysql/mysql.conf.d/mysqld.cnf
service mysql start
echo "execute o script: GRANT ALL ON *.* to root@'%' IDENTIFIED BY 'suasenha';"   
sudo mysql

