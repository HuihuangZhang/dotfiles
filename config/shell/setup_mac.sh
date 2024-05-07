#!/bin/bash

set -o errexit  
set -o pipefail 
set -o nounset  

command_exists() {
    command -v "$@" >/dev/null 2>&1
}

function setup_brew() {
    if command_exists brew; then
        echo "'brew' is already installed."
    fi
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

function setup_fzf() {
    if command_exists fzf; then
        echo "'fzf' is already installed."
    fi

    brew install fzf
    $(brew --prefix)/opt/fzf/intall --all
}

function install_raycast() {
    brew install --cask raycast
}

function install_zinit() {
    bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
}

function install_nvm() {
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
}

# TODO:
# install gvm
