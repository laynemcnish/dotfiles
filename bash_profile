alias be='bundle exec'
alias hack="git checkout master && git fetch && git pull && git checkout - && git rebase master $@"
alias mvim='vim'
alias glo='git log --oneline --graph --decorate'

function renametab () {
    echo -ne "\033]0;"$@"\007"
}

if [ -f ~/dotfiles/git-completion.bash ]; then . ~/dotfiles/git-completion.bash; fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
