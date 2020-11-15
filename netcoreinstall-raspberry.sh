wget https://download.visualstudio.microsoft.com/download/pr/e0d4bf96-e481-4c16-a2dc-69f002f2f892/ee8457bcbfae80bb4e76efe04f5bd3e2/dotnet-runtime-2.1.23-linux-arm.tar.gz
mkdir -p /usr/share/dotnet && tar zxf dotnet-runtime-2.1.23-linux-arm.tar.gz -C /usr/share/dotnet
ln -s /usr/share/dotnet /usr/bin/dotnet
export DOTNET_ROOT=/usr/bin/dotnet
export PATH=$PATH:/usr/bin/dotnet
dotnet --info
echo "export DOTNET_ROOT=/usr/bin/dotnet"
echo "export PATH=$PATH:/usr/bin/dotnet"
sudo nano .profile
