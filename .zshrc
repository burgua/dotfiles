# Set up the prompt

autoload -Uz promptinit
promptinit
prompt walters

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

{ . $HOME/.bashrc; }

{ . $HOME/.oh-my-zsh/templates/zshrc.zsh-template; }

plugins=( git ruby rails heroku zsh-syntax-highlighting)

#################
# private aliases

PROMPT_COMMAND='history -a'
editor="vim"
alias vi=$editor
alias vim=$editor
alias nano=$editor
alias svi="sudo $editor"
alias nbash=$editor" ~/.bashrc"
alias wg="wget -c "
alias vt="vim ."
alias t="tail -f"
alias tarx="tar -xvvzf"
alias l="ls -la --group-directories-first --color=always"
alias i="ping -c 4 google.de"
alias sys="htop"
alias fonts="sudo fc-cache -f"
alias ls="ls --color=auto"
alias proc="sudo ps -Af | grep "
export EDITOR=$editor
export HISTCONTROL="erasedups"

#################

cd

