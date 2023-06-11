#!/bin/bash

# If the installer is set to "stable", use brew install instead
if [ "$VISUAL_STUIO_CODE_BUILD" = "stable" ]; then
  filename="Visual Studio Code.app"
  # Check if 'Visual Studio Code.app' exists in the Applications folder
  if [ -d "$HOME"/Applications/"$filename" ]; then
    echo "Visual Studio Code (stable) is already installed..."
    return 0
  fi

  echo "Installing Visual Studio Code (stable) via brew..."
  brew install --cask visualstudiocode
else
  filename="Visual Studio Code - Insiders"

  # In case a former install was aborted, remove the zip file before attempting to download it again
  rm -rf "$HOME"/Downloads/"$filename".zip "$HOME"/Downloads/"$filename".app

  # Check if 'Visual Studio Code Insiders.app' exists in the Applications folder
  if [ -d "$HOME"/Applications/"$filename".app ]; then
    echo "Visual Studio Code (insider) is already installed..."
    return 0
  fi

  echo "Installing Visual Studio Code (insider)..."

  # Download Visual Studio Code Insider
  curl -L -o "$HOME"/Downloads/"$filename".zip "https://code.visualstudio.com/sha/download?build=insider&os=darwin-arm64"

  # Extract the zip file
  unzip -q "$HOME"/Downloads/"$filename".zip -d "$HOME"/Downloads/

  # Copy the app to the Applications folder
  cp -R "$HOME"/Downloads/"$filename".app "$HOME"/Applications/

  # Remove the zip file and extracted app
  rm -rf "$HOME"/Downloads/"$filename".zip "$HOME"/Downloads/"$filename".app
fi
