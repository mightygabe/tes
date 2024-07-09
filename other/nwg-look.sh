#!/usr/bin/env bash

sudo apt install golang libgtk-3-dev libcairo2-dev libglib2.0-bin

cd ~/Downloads
wget https://github.com/nwg-piotr/nwg-look/archive/refs/tags/v0.2.7.zip
unzip v0.2.7.zip
cd nwg-look-0.2.7
make build
sudo make install

cd ..
rm -rf nwg-look-0.2.7
rm -rf v0.2.7.zip