if [ -f ~/.personal ]; then
    . ~/.personal
fi

export EDITOR=vim

alias ddc="docker-compose"
alias ddcd="docker-compose down"
alias ddcul="docker-compose up -d && docker-compose logs -f"
alias ddcrl="docker-compose down && docker-compose up -d && docker-compose logs -f"
alias ddcs="docker-compose ps"
alias viddc="vim docker-compose.yml"

# git aliases
alias gg="git"
alias ggs="git status -sb"
alias ggd="git diff"
alias ggdc="git diff --cached"
alias gga="git add"
alias ggap="git add --patch"
alias ggc="git commit"
alias ggcm="git commit -m"
alias ggco="git checkout"
alias ggcob="git checkout -b"
alias ggdev="git checkout dev && git pull"

#alias load-dotenv="export `egrep -v '^#' .env | xargs`"

# Get the current branch name (not so useful in itself, but used in
# other aliases)
alias git-branch-name="git rev-parse --abbrev-ref HEAD"
# Push the current branch to the remote "origin", and set it to track
# the upstream branch
alias git-publish='git push --set-upstream origin $(git-branch-name)'
alias ggpub="git-publish"
alias ggpush="git push"

alias docker-ports='docker ps --format "{{.Ports}}" | grep -oP "([0-9]+)->" | cut -d"-" -f1 | sort'

export PATH="/apps/00-nuckduck-homeserver/scripts/:$PATH"
