# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install

# Prompt
source ~/.git-prompt.sh
setopt PROMPT_SUBST
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM='auto'
GIT_PS1_DESCRIBE_STYLE='branch'
GIT_PS1_SHOWCOLORHINTS=1

precmd () { __git_ps1 "%n%F{blue}@%F{white}%m%f %F{yellow}%~%f" " %F{blue}%#%f " ": %s" }

#User
MAIL=;
export MAIL;

#Options
set -o noclobber
setxkbmap -option "caps:escape"
WORDCHARS=${WORDCHARS//[\/]}

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi
