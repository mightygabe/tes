#!/usr/bin/env bash

sudo apt install -y golang libgtk-3-dev libcairo2-dev libglib2.0-bin jq

# Navigate to the Downloads directory
cd ~/Downloads

# Get the latest release tag from GitHub
LATEST_RELEASE=$(curl -s https://api.github.com/repos/nwg-piotr/nwg-look/releases/latest | jq -r '.tag_name')

# Download the latest release zip file
wget https://github.com/nwg-piotr/nwg-look/archive/refs/tags/${LATEST_RELEASE}.zip -O nwg-look-latest.zip

# Unzip the downloaded file
unzip nwg-look-latest.zip

# Navigate into the unzipped directory
cd nwg-look-${LATEST_RELEASE#v}

# Build and install the application
make build
sudo make install

# Clean up
cd ..
#rm -rf nwg-look-${LATEST_RELEASE#v}
#rm -rf nwg-look-latest.zip
