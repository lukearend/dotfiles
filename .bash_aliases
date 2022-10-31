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

# import git bash aliases
if [ -f ~/.bash_aliases_git ]; then
    source ~/.bash_aliases_git
fi

# import any aliases specific to this machine
if [ -f ~/.bash_aliases_local ]; then
    source ~/.bash_aliases_local
fi
