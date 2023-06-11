#!/bin/bash

# A simple script to update Homebrew, upgrade all packages, and clean up after
echo "Updating Homebrew packages & apps..."
brew update
brew upgrade
echo "Cleaning up after Homebrew update..."
brew cleanup
