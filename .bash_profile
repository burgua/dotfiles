export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR=subl

alias c="cd && cd Source"
alias cls="clear"
alias reset="defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock"
alias trash="killall cfprefsd"
alias npm-top="npm list --depth=0"

alias be="bundle exec"
alias bi="bundle install --path vendor/bundle"

alias brc="brew cleanup && brew prune"
alias bru="brew update && brew upgrade"
