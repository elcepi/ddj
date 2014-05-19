#!/usr/bin/env bash

apt-get update
apt-get -y install curl
apt-get -y install build-essential

echo "Installing mysql"

debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'
apt-get -y install mysql-server
apt-get -y install mysql-client

echo "Creating mysql user"
mysql -uroot -proot -e "CREATE DATABASE IF NOT EXISTS ddj"
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO ddj@'localhost' IDENTIFIED BY 'ddj' WITH GRANT OPTION"
mysql -uroot -proot -e "GRANT ALL PRIVILEGES ON *.* TO ddj@'%'         IDENTIFIED BY 'ddj' WITH GRANT OPTION"

echo "Configuring mysql networking"
sed -i "s/127.0.0.1/*/" /etc/mysql/my.cnf
service mysql restart

echo "Installing RVM dependencies"
apt-get -y install libmysql-ruby libmysqlclient-dev


echo "All done!"
