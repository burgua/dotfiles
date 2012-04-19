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


#################

###-begin-bem-completion-###
#
# bem command completion script
#
# Installation: bem completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: bem completion > /usr/local/etc/bash_completion.d/bem
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if complete &>/dev/null; then
  _bem_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           bem completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -F _bem_completion bem
elif compctl &>/dev/null; then
  _bem_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       bem completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _bem_completion bem
fi
###-end-bem-completion-###
export NODE_PATH="/usr/local/lib/node_modules:"
