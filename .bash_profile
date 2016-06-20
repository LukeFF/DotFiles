export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PIP_REQUIRE_VIRTUALENV=true
export EDITOR=nano
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

alias ls='ls -GFh'

gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
