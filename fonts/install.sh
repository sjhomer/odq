#!/bin/bash

echo "Installing dev fonts..."

# Copy all *.ttf files into ~/Library/Fonts
find fonts -name "*.ttf" -exec cp {} "$HOME"/Library/Fonts \;
