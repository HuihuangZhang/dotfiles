#!/bin/bash

function setup_fzf() {
    brew install fzf
    
    $(brew --prefix)/opt/fzf/intall --all
}

function setup_brew() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

# install nvm
# install gvm
# install zinit

# grep
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'
