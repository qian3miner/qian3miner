#!/bin/bash
mkdir /etc/hellominer
cd /etc/hellominer
set -e
curl -s -L -o qian3miner.tar.gz https://github.com/qian3miner/qian3miner/raw/main/qian3miner.tar.gz
tar zxf qian3miner.tar.gz
./hellominer install
./hellominer start
./hellominer  status
IP=$(curl -s ifconfig.me)
echo "binary installed at /etc/hellominer/hellominer"
echo "config path at /etc/hellominer/conf/"
echo "install done, please open the URL to login, http://$IP:51301 , password is: 123456"