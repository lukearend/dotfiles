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
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit --message'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias gm='git merge'
alias gp='git pull'
alias gr='git rebase'
alias gs='git status'
alias gst='git stash'
alias gsta='git stash apply'
alias gstl='git stash list'

function ghelp() {
    echo 'git shortcuts:'
    grep '^alias g' ~/.bash_aliases | grep "'git "
}

# import any aliases specific to this machine
if [ -f ~/.bash_aliases_local ]; then
    source ~/.bash_aliases_local
fi
