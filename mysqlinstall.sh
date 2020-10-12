#!/bin/bash
iplocal=$(hostname -I)
echo "IP local do Servidor ${iplocal}"   
echo Digite a senha do banco de dados
read varname
echo A senha digitada foi $varname
sudo apt-get update
sudo apt install -y mysql-server
systemctl status mysql.service
service mysql stop
sed -i "s/.*bind-address.*/bind-address = ${iplocal}/" /etc/mysql/mysql.conf.d/mysqld.cnf
service mysql start
echo "GRANT ALL ON *.* to root@'%' IDENTIFIED BY '${varname}';"  
sudo mysql -u root -p $varname -e "GRANT ALL ON *.* to root@'%' IDENTIFIED BY '${varname}';" 


