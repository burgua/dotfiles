# Set up the prompt

# Keep 100 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=100
SAVEHIST=100
HISTFILE=~/.zsh_history

plugins=( git osx rails ruby brew capistrano rbenv docker gem node npm postgres rake )

{ . $HOME/.bashrc; }

ZSH_THEME=("robbyrussell")
ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
alias l="ls -la"

# rails
alias bi="bundle install --path vendor/bundle"
alias be="bundle exec"
alias bu="bundle update"

PROMPT_COMMAND='history -a'
alias i="ping -c 4 google.de"
export EDITOR=vim
export HISTCONTROL="erasedups"

