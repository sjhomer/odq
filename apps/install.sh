# Install all brew libs/apps first and foremost, as others depend on these.
source "$CWD"/apps/brew.sh

# Install desired VS Code build next
source "$CWD"/apps/visualStudioCode.sh

# Finally, install the remaining dev tooling
source "$CWD"/apps/packageManagers.sh
source "$CWD"/apps/python.sh
source "$CWD"/apps/pheonix.sh
