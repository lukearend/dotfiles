# Imported by .bashrc.

# fancy cd
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}

# improved ls
alias ls='ls -GFh'
alias la='ls -A'

# git shortcuts
alias gl='git log'
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbr='git branch --remote'
alias gbd='git branch --delete'
alias gc='git commit'
alias gcm='git commit --message'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcot='git checkout --track'
alias gd='git diff'
alias gdh='git diff HEAD'
alias gi='git init'
alias gm='git merge'
alias gf='git fetch'
alias gp='git pull'
alias gr='git rebase'
alias gs='git status'
alias gst='git stash'
alias gsta='git stash apply'
alias gstl='git stash list'
alias gpu='git push'
alias gpuu='git push -u'

type __git_complete >/dev/null 2>&1 && {
    __git_complete gl   _git_log
    __git_complete ga   _git_add
    __git_complete gau  _git_add
    __git_complete gb   _git_branch
    __git_complete gbr  _git_branch
    __git_complete gbd  _git_branch
    __git_complete gc   _git_commit
    __git_complete gcm  _git_commit
    __git_complete gco  _git_checkout
    __git_complete gcob _git_checkout
    __git_complete gcom _git_checkout
    __git_complete gcot _git_checkout
    __git_complete gd   _git_diff
    __git_complete gdh  _git_diff
    __git_complete gi   _git_init
    __git_complete gm   _git_merge
    __git_complete gf   _git_fetch
    __git_complete gp   _git_pull
    __git_complete gr   _git_rebase
    __git_complete gs   _git_status
    __git_complete gst  _git_stash
    __git_complete gsta _git_stash
    __git_complete gstl _git_stash
    __git_complete gpu  _git_push
    __git_complete gpuu _git_push
}

function ghelp() {
    echo 'git shortcuts:'
    grep '^alias g' ~/.bash_aliases | grep "'git "
}

# import any aliases specific to this machine
if [ -f ~/.bash_aliases_local ]; then
    source ~/.bash_aliases_local
fi
