# ------------------------------------------------------------------------------
# Development helpers
# A set of helpers to make development easier.
# ------------------------------------------------------------------------------

# Hosts and DNS
alias edithosts='sudo vi /etc/hosts && sudo killall -HUP mDNSResponder && announce "DNS cache flushed"'

# pnpm helpers
alias pnn8='npm i -g pnpm@3.8.1 && pnpm i && cd .. && announce "Packages installed"'
alias pnn10='npm i -g pnpm@5.18.11 && pnpm i && cd .. && announce "Packages installed"'

# FNM node support
eval "$(fnm env --use-on-cd)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Dev bin folders, and Elixir
export PATH="$PATH:$HOME/bin:/usr/local/bin:$HOME/.mix/escripts"
