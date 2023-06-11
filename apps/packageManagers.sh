#!/bin/bash

# Check if the fnm command exists
if ! command -v fnm &> /dev/null; then
  echo "Installing fnm, Node Manager..."
  curl -fsSL https://fnm.vercel.app/install | bash
else
  echo "fnm, Node Manager, is already installed..."
fi

fnm install 20.0.0
fnm install --lts
fnm use v20.0.0

# Check if RVM exists
if ! command -v rvm &> /dev/null; then
  echo "Installing RVM, Ruby Manager..."
  curl -sSL https://get.rvm.io | bash -s stable
else
  echo "RVM, Ruby Manager, is already installed..."
fi
