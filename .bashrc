#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=42
GIT_PS1_SHOWSTASHSTATE=42
GIT_PS1_SHOWUNTRACKEDFILES=42
GIT_PS1_SHOWUPSTREAM='auto'
GIT_PS1_DESCRIBE_STYLE='branch'
GIT_PS1_SHOWCOLORHINTS=42
#\[\033[34m\]$(__git_ps1)
PROMPT_COMMAND='__git_ps1 "\[\033[00m\]\u\[\033[34m\]@\[\033[00m\]\h \[\033[33m\]\w\[\033[00m\]"\
					" \[\033[34m\]\$ \[\033[00m\]" ": %s"'

#User
MAIL=;
export MAIL;

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi
