mkcd() {
    mkdir -p $@ && cd ${@:$#}
}

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
