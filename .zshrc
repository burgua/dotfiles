# Set up the prompt

# Keep 100 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=100
SAVEHIST=100
HISTFILE=~/.zsh_history

plugins=( git brew cap osx bundle textmate gem rails ruby rake )

{ . $HOME/.bashrc; }
ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

#################
# private aliases

PROMPT_COMMAND='history -a'
alias i="ping -c 4 google.de"
export EDITOR=vim
export HISTCONTROL="erasedups"
export gut="git"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
