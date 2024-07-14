if [ ! -d $HOME/downloads ]; then
  mkdir $HOME/downloads
fi

if [ ! -d $HOME/bin/ ]; then
  mkdir $HOME/bin/
fi

mkdir $HOME/bin/dotnet-sdk-8-linux-x64

curl $1 -o $HOME/downloads/dotnet-sdk-8-linux-x64.tar.gz

tar zxf $HOME/downloads/dotnet-sdk-8-linux-x64.tar.gz -C $HOME/bin/dotnet-sdk-8-linux-x64

printf '\nexport DOTNET_ROOT=$HOME/bin/dotnet-sdk-8-linux-x64\nexport PATH=$PATH:$HOME/bin/dotnet-sdk-8-linux-x64:$HOME/.dotnet/tools\n' >> $HOME/.bashrc
