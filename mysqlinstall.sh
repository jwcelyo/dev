#!/bin/bash
iplocal=$(hostname -I)
echo "IP local do Servidor ${iplocal}"   
sudo apt-get update
sudo apt install mysql-server
sudo mysql_secure_installation
systemctl status mysql.service
service mysql stop
sed -i "s/.*bind-address.*/bind-address = ${iplocal}/" /etc/mysql/my.cnf
service mysql start

