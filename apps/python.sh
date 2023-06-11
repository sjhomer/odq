#!/usr/bash

# https://www.python.org/
# Python is powerful... and fast; plays well with others; runs everywhere;
# is friendly & easy to learn; is Open. These are some of the reasons people
# who use Python would rather not use anything else.

# Skip if INSTALL_PYTHON is not true
if [ "$INSTALL_PYTHON" != true ]; then
  echo "Skipping Python installation..."
  return 0
fi

targetPackage=python@"$PYTHON_VERSION"

if echo "$EXISTING_PACKAGES" | grep -q "^$targetPackage\$"; then
  echo "Python v$PYTHON_VERSION is already installed..."

  echo "Attempting to upgrade pip..."
  pip install --upgrade pip
else
  echo "Installing Python v$PYTHON_VERSION..."
  brew install "$targetPackage"
fi

echo "Installing Python packages..."
# Perform the pip install but hide output unless there is an error
pip install --quiet -r "$CWD"/apps/python.requirements.txt || exit 1
