# **************************************************************************** #
#                                                                              #
#                                                                              #
#    .bash_aliases                                                             #
#                                                                              #
#    By : sblauen                                                              #
#                                                                              #
#    Created : 2018/01/11                                                      #
#    Updated : 2019/08/15                                                      #
#                                                                              #
# **************************************************************************** #

# C
alias cw='clang -Wall -Wextra -Werror'
alias gw='gcc -Wall -Wextra -Werror'

# Git
alias gcl='git clone'
alias gft='git fetch'
alias gpm='git pull'
alias gpr='git pull --rebase'
alias gbr='git branch'
alias gbf='git branch -f'
alias gck='git checkout'
alias gcb='git checkout -b'
alias grb='git rebase'
alias gri='git rebase -i'
alias gcp='git cherry-pick'
alias gmg='git merge'
alias gst='git status'
alias gad='git add'
alias grm='git rm'
alias gcm='git commit'
alias gpo='git push origin'
alias gpu='git push upstream'
alias glg='git log'
alias glp='git log -p -1'
alias gl1='git log --oneline --decorate'
alias gl1a='git log --oneline --decorate --all'
alias glg-graph='git log --oneline --decorate --all --graph'
alias glg-stat='git log --oneline --decorate --graph --stat'
alias glg-astat='git log --oneline --decorate --all --graph --stat'
alias glg-short='git log --oneline --decorate --all --graph --simplify-by-decoration'
alias gdf='git diff'

# Utils
alias ls='ls --color=always'
