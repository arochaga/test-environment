#!/bin/sh
echo "[*] Installing required dependencies"
PWD="${pwd}"

sudo apt-get install wget git sudo netcat npm nodejs
# When using docker images
# sudo apt-get install wget git sudo netcat

git clone https://github.com/alastria/alastria-node.git  
cd alastria-node/
git checkout develop

cd ..
sudo -H $PWD/alastria-node/scripts/bootstrap.sh
rm alastria-node