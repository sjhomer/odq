#!/bin/bash

# Check if INSTALL_PHOENIX is not true and return 0 if not
if [ "$INSTALL_PHOENIX" != true ]; then
  echo "Skipping Phoenix installation..."
  return 0
fi

echo "Attempting to install Phoenix v$PHOENIX_VERSION..."

# Check if elixir command exists
if ! command -v elixir &>/dev/null; then
  echo "elixir command could not be found, installing..."
  brew install elixir
fi

# Check if mix command exists
if ! command -v mix &>/dev/null; then
  echo "mix command could not be found, something went wrong with the elixir install. Skipping Phoenix install..."
  return 1
fi

# Check if pheonix exists
if [ ! -d "$HOME"/.mix/archives/phx_new-"$PHOENIX_VERSION" ]; then
  mix archive.install hex phx_new "$PHOENIX_VERSION"
else
  echo "Phoenix v$PHOENIX_VERSION is already installed..."
fi

