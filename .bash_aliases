# Imported by .bashrc.

# git shortcuts
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gr="git rebase --interactive"
alias gb="git branch"
alias gch="git checkout"
alias gcb="git checkout -b"
alias gpl="git pull"
alias gps="git push"
alias gpu="git push -u origin $(git branch --show-current)"

# fancy cd with ls
function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}

# improve ls
alias ls='ls -GFh'
alias la='ls -A'

# aliases specific to this machine
if [ -f ~/.bash_aliases_local ]; then
  . ~/.bash_aliases_local
fi
