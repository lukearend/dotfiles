# Executed by .bashrc when shell is acquired.

alias aliases="echo && echo 'aliases:' && echo && "\
"grep '^alias' ~/.bash_aliases | grep -v 'alias aliases' "\
"| awk '{print \$2}' | sed 's/=.*//' | sed 's/^/    /' && echo"
