# ------------------------------------------------------------------------------
# Index
# Sources all zsh files in this directory
# ------------------------------------------------------------------------------

# A helper to announce a message on completion of a command
function announce() {
  message="$1"
  say "$message"
}

source "$HOME"/.zsh/dev.zsh
source "$HOME"/.zsh/git.zsh
source "$HOME"/.zsh/system.zsh

# Oh My Zsh bootstrapping and defaults
export ZSH="$HOME/.oh-my-zsh"
# shellcheck disable=SC2034
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto      # update automatically without asking
# shellcheck disable=SC2034
plugins=(aliases git-auto-fetch macos jira)
source "$ZSH"/oh-my-zsh.sh

# Details Zsh plugins e
function zplugins() {
    echo "Zsh plugins:"
    echo "  - git-auto-fetch; refetches git repos every 120s"
    echo "  - macos; 'showfiles' will expose hidden files. Full commands https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos"
    echo "  - aliases; 'acs' will list alias; Full commands https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/aliases"
    echo "  - jira; 'jira mine' will show assigend tasks. Full commands https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/jira"
}
