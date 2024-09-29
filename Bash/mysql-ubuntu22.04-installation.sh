#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install mysql-server -y

systemctl start mysql.service

sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by '$1';"
