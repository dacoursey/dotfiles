
export PATH="$PATH:/Applications/HP_Fortify/HP_Fortify_SCA_and_Apps_4.30/bin"

alias ll='ls -l'
alias fu='sudo $(history -p \!\!)'


# This function allows for command line arguments to be included in the following alias
lscd() {
        cd $1
        ls -l
}
alias cd=lscd

# Functions used for python virtualenv
# Add the name of the desired venv after the cmd
function ve_activate() {
    if [ "$1" != "" -a -d "$HOME/.venv/$1" ]
    then
        source "$HOME/.venv/$1/bin/activate"
    else
        echo "$1 is *not* a valid virtual env"
    fi
}

function ve_create() {
    if [ "$1" != "" -a ! -d "$HOME/.venv/$1" ]
    then
        virtualenv "$HOME/.venv/$1"
        source "$HOME/.venv/$1/bin/activate"
    else
        echo "$1 already exists"
    fi
}

function ve_list() {
    ls -apFG "$HOME/.venv/"
}
