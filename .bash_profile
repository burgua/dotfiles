export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR=subl

alias c="cd && cd Source"
alias cls="clear"
alias reset="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"
alias ll="ls -la --full-time"

alias brc="brew cleanup && brew prune"
alias bru="brew update && brew upgrade"
