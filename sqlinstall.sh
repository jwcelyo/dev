#!/bin/bash
iplocal=$(hostname -I)
echo "IP local do Servidor ${iplocal}"   
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/18.04/mssql-server-2019.list)"
sudo apt-get update
sudo apt-get install -y mssql-server
sudo /opt/mssql/bin/mssql-conf setup
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/18.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
sudo apt-get update 
sudo apt-get install mssql-tools unixodbc-dev
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc
wget -O /var/opt/mssql/mssql.conf https://raw.githubusercontent.com/jwcelyo/dev/master/mssql.conf
sudo /opt/mssql/bin/mssql-conf set network.ipaddress $iplocal
sudo /opt/mssql/bin/mssql-conf set network.tcpport 3389
reboot
