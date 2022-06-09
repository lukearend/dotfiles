# Executed at the beginning of a login shell (when user logs 
# in with username and password locally or via remote ssh). 
# Login shell settings specific to this machine should be 
# placed in ~/.profile.

if [ -f ~/.profile ]; then
    source ~/.profile
fi

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
