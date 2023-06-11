#!/bin/bash

# Get a list of installed packages
EXISTING_PACKAGES=$(brew list)
export EXISTING_PACKAGES

# Loop through the BREW_PACKAGES array and check if each package is installed
missing_packages=()
for package in "${BREW_PACKAGES[@]}"; do
  if ! echo "$EXISTING_PACKAGES" | grep -q "^$package\$"; then
    missing_packages+=("$package")
  fi
done

echo "List of packages to brew install: ${missing_packages[*]}"

# Loop through BREW_PACKAGES array from config and run brew install for each package
for package in "${missing_packages[@]}"; do
  brew install "$package"
done

# Loop through the BREW_APPS array and check if each app is installed
missing_apps=()
for app in "${BREW_APPS[@]}"; do
  if ! echo "$EXISTING_PACKAGES" | grep -q "^$package\$"; then
    missing_apps+=("$app")
  fi
done

echo "List of apps to brew cask install: ${missing_apps[*]}"

# Loop through BREW_APPS array from config and run brew install for each package
for package in "${missing_apps[@]}"; do
  brew install --cask "$package"
done
