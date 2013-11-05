source /Users/sam/.rbenvrc

# Editor and colors
export EDITOR="subl -w"
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='01;33'

# Password-vault
export PATH="$PATH:$HOME/stripe/password-vault/bin"
source "$HOME/stripe/password-vault/bash_completion"

# Space Commander
export PATH="$PATH:$HOME/stripe/space-commander/bin"
alias ssh=sc-ssh-wrapper

# Henson
export PATH="$PATH:$HOME/stripe/henson/bin"

# Aliases
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

alias ..='cd ..'

alias gs='git status'
alias gco='git checkout'
alias gci='git commit'
alias gd='git diff'
alias gpull="git pull --rebase"
alias gpush="git push"