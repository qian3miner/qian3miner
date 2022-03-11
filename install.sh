#!/bin/bash
mkdir /etc/qian3miner
cd /etc/qian3miner
set -e
curl -s -L -o qian3miner.tar.gz https://github.com/qian3miner/qian3miner/raw/qian3miner.tar.gz
tar zxf qian3miner.tar.gz
./qian3miner install
./qian3miner start
./qian3miner  status
IP=$(curl -s ifconfig.me)
echo "binary installed at /etc/qian3miner/qian3miner"
echo "config path at /etc/qian3miner/conf/"
echo "install done, please open the URL to login, http://$IP:51301 , password is: 123456"