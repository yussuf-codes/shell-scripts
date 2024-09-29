#!/bin/bash

password='Passw0rd'
create_database_query='CREATE DATABASE Playground;'

curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft-prod.gpg
curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc
curl -fsSL https://packages.microsoft.com/config/ubuntu/22.04/mssql-server-2022.list | sudo tee /etc/apt/sources.list.d/mssql-server-2022.list

sudo apt update
sudo apt install mssql-server -y
sudo /opt/mssql/bin/mssql-conf setup

systemctl status mssql-server --no-pager

sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/22.04/prod.list)"
sudo apt install sqlcmd -y

sqlcmd -U sa -P ""$password -Q "$create_database_query"

sudo ufw allow 1433/tcp
