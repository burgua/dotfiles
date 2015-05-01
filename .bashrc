# development
alias c="cd && cd Source"

# fix building gems
#export ARCHFLAGS="-Wno-error=unused-command-line-argument-hard-error-in-future"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# osx
alias clear_menu="/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain system -domain user"

# for homebrew
HOMEBREW_GITHUB_API_TOKEN="a143c6018c69f23b24a76a10b853c5352b463905"
alias br="brew update && brew upgrade --all"
alias brc="brew cleanup && brew prune && brew cleanup"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
