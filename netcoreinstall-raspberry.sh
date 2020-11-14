sudo apt-get install curl libunwind8 gettext
wget https://download.visualstudio.microsoft.com/download/pr/e0d4bf96-e481-4c16-a2dc-69f002f2f892/ee8457bcbfae80bb4e76efe04f5bd3e2/dotnet-runtime-2.1.23-linux-arm.tar.gz
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-2.2.102-linux-arm.tar.gz -C $HOME/dotnet
export DOTNET_ROOT=$HOME/dotnet 
export PATH=$PATH:$HOME/dotnet
dotnet --info