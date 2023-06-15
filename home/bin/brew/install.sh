#!/bin/bash

# Check if brew is already installed
if command -v brew &> /dev/null; then
  echo "Brew is already installed, running updater..."
  # source "$HOME"/bin/brew/autoUpdateOnStartup.sh
else
  echo "Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

 # Add brew to profile
   (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/seanhomer/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Initialize brew auto-update on system load
#echo "Initializing brew auto-update on system load..."
#load_plist="$CWD"/home/bin/load_plist
#$load_plist "$HOME"/bin/brew/com.localBrew.autoUpdateOnStartup.plist

# Check if suderos doesn't exist
#if [ ! -f /etc/sudoers.d/suderos ]; then
#  echo "Creating suderos..."
#  sudo touch /etc/sudoers.d/suderos
#fi

# Check if suderos doesn't include the autoUpdateOnStartup.sh script
#if ! cat /etc/sudoers.d/suderos | grep -qF "autoUpdateOnStartup.sh"; then
#  echo "Adding brew auto-update to suderos..."
#  echo "suderos ALL=(ALL) NOPASSWD: /bin/bash -c $HOME/brew/autoUpdateOnStartup.sh" | sudo tee -a /etc/sudoers.d/suderos
#else
#  echo "Brew auto-update already in suderos..."
#fi
