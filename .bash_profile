# Python tools

# set up pyright version
export PYRIGHT_PYTHON_FORCE_VERSION="latest"
# set up pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Git tools

# set up git auto-complete on tab
source /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash

# format git branches
function gitbranch_ps1 {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PROMPT_DIRTRIM=3
PS1='${debian_chroot:+($debian_chroot)}\
\[\e[01;34m\]\w\
\[\e[01;35m\]$(gitbranch_ps1)\
\[\e[00m\] \$ '


# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history# Bash history

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# set history length and format
HISTSIZE=20000
HISTFILESIZE=20000
HISTTIMEFORMAT="%Y-%m-%d %T "
