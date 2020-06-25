sudo -i
wget -O /etc/ssh/sshd_config https://raw.githubusercontent.com/jwcelyo/dev/master/sshd_config
echo "Digite sua senha de root"
read senha
passwd $senha
reboot
