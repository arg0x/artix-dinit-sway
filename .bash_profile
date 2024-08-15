#
# ~/.bash_profile
#

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# cargo env
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Pipenv
PIPENV_VENV_IN_PROJECT=true
. "$HOME/.cargo/env"
