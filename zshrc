# Set up the prompt

clear

export ZSH=$HOME/.oh-my-zsh

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# oh my zsh

{ . $HOME/.oh-my-zsh/templates/zshrc.zsh-template; }
{ . $HOME/.bashrc; }

plugins=( git ruby heroku zsh-syntax-highlighting brew node npm osx rvm  )

# get ruby version from either rvm or system ruby.
if [[ -f ~/.rvm/bin/rvm-prompt ]]; then
  RPS1="%{%}%{$reset_color%}%{$fg[cyan]%}\$(~/.rvm/bin/rvm-prompt i v g)%{$reset_color%}"
fi

# exec zsh

source $ZSH/oh-my-zsh.sh

#################
# private aliases

PROMPT_COMMAND='history -a'
alias i="ping -c 4 google.de"
export EDITOR=vim
export HISTCONTROL="erasedups"

