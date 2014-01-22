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
alias ga='git add'
alias gb='git branch'
alias gba='git branch -va'
alias gbl='git blame'
alias gc='git checkout'
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
alias gl='git log'
alias gla='git log --oneline --decorate --all --graph'
alias gld='git log --oneline --decorate'
alias glh='git hist'
alias glo='git log --oneline'
alias glp="git log --pretty=format:'%C(yellow)%h%Cred%d%Creset %C(magenta)<%an>%Creset %s %C(bold blue)(%cr)' --graph"
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
alias gs='git status'
alias gst='git stash'
alias gsw='git show'
alias gt='git tag'

# More aliases
alias ll='ls -lha'
alias la='ls -la'


# Sublime alias
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
