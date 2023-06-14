#!/bin/bash

# Clear out previous downloads
rm -rf ~/Downloads/odq-main/
rm -rf ~/Downloads/odq.zip

# Download the repository using curl
echo "Downloading odq..."
curl -L -o ~/Downloads/odq.zip https://github.com/sjhomer/odq/archive/refs/heads/main.zip -s

# Unzip the downloaded file
echo "Unzipping odq..."
unzip ~/Downloads/odq.zip -d ~/Downloads/ -q

# Change directory to the unzipped repository
echo "Attempting to run odq..."
cd ~/Downloads/odq-main/ || exit

# Make the odq.sh script executable
chmod +x odq.sh

# Run the odq.sh script
./odq.sh
