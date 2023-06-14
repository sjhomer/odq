#!/bin/bash

# Export the current directory
CWD=$(pwd)

# https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=Blocks&text=Odq
echo " .----------------.  .----------------.  .----------------.
| .--------------. || .--------------. || .--------------. |
| |     ____     | || |  ________    | || |    ___       | |
| |   .'    \`.   | || | |_   ___ \`.  | || |  .'   '.     | |
| |  /  .--.  \  | || |   | |   \`. \ | || | /  .-.  \    | |
| |  | |    | |  | || |   | |    | | | || | | |   | |    | |
| |  \  \`--'  /  | || |  _| |___.' / | || | \  \`-'  \_   | |
| |   \`.____.'   | || | |________.'  | || |  \`.___.\__|  | |
| |              | || |              | || |              | |
| '--------------' || '--------------' || '--------------' |
 '----------------'  '----------------'  '----------------' "

printf "\nOSx Developer Quickstart by SJ Homer - https://github.com/sjhomer/odq\n
NOTE: Sudo access will be required for some steps.\n
Begin OSx Development Quickstart? "

# Prompt user to begin or exit
echo "Enter 1 to begin, or 2 to review/adjust the config.sh first."
select yn in "Continue" "Exit"; do
  case $yn in
    Continue ) break;;
    Exit ) echo -n "No worries! Take your time and adjust the \`config.sh\` before re-running \`. $CWD/odq.sh\`" && return 0;;
  esac
done

source "$CWD"/config.sh
echo "Config loaded"

# Install bin scripts & Homebrew
source "$CWD"/home/install.sh

# Install applications (depends on Homebrew)
source "$CWD"/apps/install.sh

# Install fonts to Font Book
source "$CWD"/fonts/install.sh

# https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=Soft&text=Go%20forth%20%26%20DEV!
echo "                                                                                                         ,---.
 ,----.               ,---.                ,--.  ,--.          ,---.        ,------.  ,------.,--.   ,--.|   |
'  .-./    ,---.     /  .-' ,---. ,--.--.,-'  '-.|  ,---.     |  o ,-.      |  .-.  \ |  .---' \  \`.'  / |  .'
|  | .---.| .-. |    |  \`-,| .-. ||  .--''-.  .-'|  .-.  |    .'     /_     |  |  \  :|  \`--,   \     /  |  |
'  '--'  |' '-' '    |  .-'' '-' '|  |     |  |  |  | |  |    |  o  .__)    |  '--'  /|  \`---.   \   /   \`--'
 \`------'  \`---'     \`--'   \`---' \`--'     \`--'  \`--' \`--'     \`---'        \`-------' \`------'    \`-'    .--.
                                                                                                         '--'  "

# if INSTALL_OH_MY_ZSH is true, then the .zshrc file has been updated
if [ "$INSTALL_OH_MY_ZSH" = true ]; then
  echo "ZSH. One last thing! You need to run now is 'source ~/.zshrc' to load your new .zshrc file, then you're good to go!"
fi
