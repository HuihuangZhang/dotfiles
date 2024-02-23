function mkcd {
    mkdir -p -- "$1" && cd -P -- "$1"
}

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
