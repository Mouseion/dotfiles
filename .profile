# Set ANSI Colors in iTerm2
export CLICOLOR=1
export EDITOR=vim


# Source git completion and prompt and use color
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi


RED="\[\033[0;31m\]"
MAGENTA="\[\033[0;35m\]"
BROWN="\[\033[0;33m\]"
YELLOW="\[\033[1;33m\]"
GRAY="\[\033[1;90m\]"
LIGHT_GRAY="\[\033[0;37m\]"
DARK_GRAY="\[\033[1;30m\]"
CYAN="\[\033[0;36m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
LIGHT_GREEN="\[\033[1;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

export PS1=$LIGHT_GRAY"\u@\h"'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$RED'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$GREEN'"$(__git_ps1 " (%s)")
    # the state is clean, changes are commited
    else echo "'$BROWN'"$(__git_ps1 " (%s)")
    fi)'$DARK_GRAY" \w"$GREEN": "


# This loads NVM
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh 


# Git aliases
alias ga='git add'
alias gaa='git add -A'
alias gap='git add --patch'
alias gb='git branch'
alias gba='git branch -va'
alias gbl='git blame'
alias gc='git checkout'
alias gcln='git clean -nd'    # dry run; includes directories
alias gclf='git clean -fd'
alias gcl='git clone'
alias gcft='git cat-file -t'    # type
alias gcfp='git cat-file -p'    # dump
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gco='git count-objects'
alias gcov='git count-objects -v'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias gfsck='git fsck'
alias gfscku='git fsck --unreachable'
alias ggc='git gc'
alias gi='git init'
alias gl='git log'
alias gla='git log --oneline --decorate --all --graph'
alias gld='git log --oneline --decorate'
alias glh='git hist'
alias glo='git log --oneline'
alias gloi='git log origin/master ^master'   # log subsets: incoming
alias gloo='git log master ^origin/master'   # log subsets: outgoing
alias glp="git log --pretty=format:'%C(yellow)%h%Cred%d%Creset %C(magenta)<%an>%Creset %s %C(bold blue)(%cr)' --graph"
alias glps="glp -S"
alias gls="git log -S"
alias gm='git merge'
alias gpl='git pull'
alias gps='git push'
alias gpr='git prune'
alias grf='git reflog'
alias grm='git remote'
alias grmv='git remote -v'
alias grms='git remote show'
alias grb='git rebase'
alias grs='git reset'
alias grss='git reset --soft'
alias grsh='git reset --hard'
alias grvl='git rev-list HEAD --count'
alias gs='git status'
alias gsl='git shortlog'
alias gslsn='git shortlog -sn'
alias gst='git stash'
alias gsta='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsw='git show'
alias gt='git tag'

# More aliases
alias ll='ls -lha'
alias la='ls -la'
alias ...='cd ../..'
alias ....='cd ../../..'

# Sublime alias
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# Tmux alias for 256color
alias tmux='tmux -2'

