alias sau='sudo apt update'
alias saudu='sudo apt upgrade'
alias sain='sudo apt install'
# alias glog='git log --oneline --graph -20'
alias ..='cd ..'
alias ...='cd ../..'

mkcd() {
    if [[ $# -ne 1 ]]; then
        printf 'Usage: mkcd DIRECTORY\n' >&2
        return 2
    fi
    mkdir -p -- "$1" && cd -- "$1"
}
