# Set ANSI Colors in iTerm2
export CLICOLOR=1


# Source git completion and prompt and use color
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi


# This loads NVM
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh 


# Git aliases
alias gs='git status'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gb='git branch'
alias gba='git branch -va'
alias ga='git add'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log'
alias glo='git log --oneline'
alias gld='git log --oneline --decorate'
alias gla='git log --oneline --decorate --all --graph'
alias glp="git log --pretty=format:'%C(yellow)%h%Cred%d%Creset %C(magenta)<%an>%Creset %s %C(bold blue)(%cr)' --graph"
alias glh='git hist'
alias gc='git checkout'
alias gst='git stash'
alias gt='git tag'
alias grm='git remote'
alias grmv='git remote -v'
alias grms='git remote show'
alias gf='git fetch'
alias gp='git pull'
alias grf='git reflog'
alias grs='git reset'
alias grss='git reset --soft'
alias grsh='git reset --hard'
alias gm='git merge'
alias grb='git rebase'


# More aliases
alias ll='ls -lha'
alias la='ls -la'


# Sublime alias
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
