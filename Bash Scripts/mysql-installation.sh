sudo apt update
sudo apt upgrade -y
sudo apt install mysql-server -y
systemctl status mysql.service
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by 'P@ssw0rd';"