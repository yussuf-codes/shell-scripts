#!/bin/bash

if [ ! -d ~/downloads ]; then
	mkdir ~/downloads
fi

if [ ! -d ~/bin ]; then
	mkdir ~/bin
fi

mkdir ~/bin/dotnet-sdk-9-linux-x64

curl "$1" -o ~/downloads/dotnet-sdk-9-linux-x64.tar.gz

tar zxf ~/downloads/dotnet-sdk-9-linux-x64.tar.gz -C ~/bin/dotnet-sdk-9-linux-x64

printf '\nif [ -d ~/bin/dotnet-sdk-9-linux-x64 ]; then\n\texport DOTNET_ROOT=~/bin/dotnet-sdk-9-linux-x64\n\texport PATH=$PATH:~/bin/dotnet-sdk-9-linux-x64:~/.dotnet/tools\nfi\n' >> ~/.bashrc
