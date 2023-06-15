#!/bin/bash

echo "Initializing the bin directory scripts..."

# Add the bin folder to the home directory, excluding this install file
rsync -avq --exclude 'install.sh' "$CWD"/home/bin "$HOME"

# Check if INSTALL_OH_MY_ZSH is not true and return 0 if not
if [ "$INSTALL_OH_MY_ZSH" != true ]; then
  echo "Skipping Oh My Zsh installation..."
  return 0
fi

# Check if zsh is installed, and if not, install it
if ! command -v zsh &>/dev/null; then
  echo "Installing zsh..."
  brew install zsh
else
  echo "zsh is already installed..."
fi

source "$CWD"/home/zsh-install.zsh

# Re-source the .zshrc for the updated changes
echo "Re-sourcing the .zshrc for the updated changes..."
zsh -c "source $HOME/.zshrc"

# We need zsh before brew
source "$CWD"/home/bin/brew/install.sh

