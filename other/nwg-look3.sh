#!/usr/bin/env bash

sudo apt install golang libgtk-3-dev libcairo2-dev libglib2.0-bin

cd ~/Downloads
git clone https://github.com/nwg-piotr/nwg-look.git
cd nwg-look
make build
sudo make install

cd ..
rm -rf nwg-look