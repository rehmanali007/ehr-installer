#!/bin/bash

mysql_repo=mysql80-community-release-el8-1.noarch.rpm

function green(){
tput bold
tput setaf 2
tput setab 0
}

function red(){
tput blod
tput setaf 1
tput setab 0
}

function res(){
tput sgr0
}

green
echo -e "\n[+] Installing required utilities...\n"
res
yum install -y wget # /dev/null
green
echo -e "\n[+] Downloading MYSQL Server repo...\n"
res
wget https://dev.mysql.com/get/$mysql_repo
sudo rpm -ivh $mysql_repo
green
echo -e "\n[+] Installing MYSQL Server using yum...\n"
res
sudo yum -y install mysql-server
