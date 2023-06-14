#!/bin/bash

# Download the repository using curl
curl -L -o ~/Downloads/odq.zip https://github.com/sjhomer/odq/archive/refs/heads/main.zip

# Unzip the downloaded file
unzip ~/Downloads/odq.zip -d ~/Downloads/

# Change directory to the unzipped repository
cd ~/Downloads/odq-main/

# Make the odq.sh script executable
chmod +x odq.sh

# Run the odq.sh script
./odq.sh
