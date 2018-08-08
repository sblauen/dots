# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' matcher-list ''
zstyle :compinstall filename '/home/sblauens/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

source ~/.git-prompt.sh
setopt PROMPT_SUBST
GIT_PS1_SHOWDIRTYSTATE=42
GIT_PS1_SHOWSTASHSTATE=42
GIT_PS1_SHOWUNTRACKEDFILES=42
GIT_PS1_SHOWUPSTREAM='auto'
GIT_PS1_DESCRIBE_STYLE='branch'
GIT_PS1_SHOWCOLORHINTS=42
# PS1='%n@%m %~ $(__git_ps1 ": %s ")%% '
precmd () { __git_ps1 "%n%F{blue}@%F{white}%m%f %F{yellow}%~%f" " %F{blue}%#%f " ": %s" }
# PROMPT="%n@%M %~ %% "
RPROMPT="%F{yellow}%T%f"

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
