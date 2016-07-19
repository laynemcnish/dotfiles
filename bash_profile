alias be='bundle exec'
alias hack="git checkout master && git fetch && git pull && git checkout - && git rebase master $@"

function renametab () {
    echo -ne "\033]0;"$@"\007"
}

if [ -f ~/dotfiles/git-completion.bash ]; then . ~/dotfiles/git-completion.bash; fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
