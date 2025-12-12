#!/usr/bin/env fish

# Git
alias --save gst "git status"
alias --save gco "git checkout"
alias --save gcm "git commit -m"
alias --save gl "git pull"
alias --save gp "git push"
alias --save gpf "git push --force-with-lease --force-if-includes"
alias --save ga "git add"
alias --save gb "git branch"
alias --save gcl "git clone"
alias --save gcof "gb | fzf | xargs git checkout"
alias --save glgg "git log --graph"
alias --save grs "git restore"
alias --save grh "git reset"
alias --save gd "git diff"
alias --save gf "git fetch"
alias --save grb "git rebase"

# Ruby / Rails
alias --save bifi "bundle install --full-index"
alias --save be "bundle exec"
alias --save rs "bundle exec rails s"
alias --save rc "bundle exec rails console"

# System
alias --save ll "ls -Alh"
alias --save du "du -h"
