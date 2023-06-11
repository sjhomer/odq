#!/bin/zsh

# Check if Oh My Zsh is installed already
if [ -d "$HOME"/.oh-my-zsh ]; then
  echo "Oh My Zsh is already installed..."
  return 0
fi

# Download Oh My Zsh install script
echo "Downloading Oh My Zsh install script..."
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -o install_oh_my_zsh.sh

# Remove the line to change shell
echo "Modifying install script..."

# Modify install_oh_my_zsh.sh to exit on completion
sed -i '' 's/exec zsh -l/exit/g' install_oh_my_zsh.sh

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh install_oh_my_zsh.sh
# Clean up install script
rm install_oh_my_zsh.sh

# Add the .zsh folder to the home directory, excluding this install file
echo "Adding the .zsh folder to the home directory, excluding this install file..."
cp "$CWD"/home/.zshrc "$HOME"/.zshrc # replace base file
rsync -avq --exclude 'install.zsh' "$CWD"/home/.zsh "$HOME" > /dev/null 2>&1

