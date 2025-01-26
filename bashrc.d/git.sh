# Alias for git diff lsst branches
alias gdiff='git diff --color-words main...$(git rev-parse --abbrev-ref HEAD)'

# Exclude .git from recursive grep
alias ggrep='grep -RI --exclude-dir=.git --exclude-dir=spec --exclude=Gemfile* --exclude=Rakefile'

# Exclude .git from tree
alias gree='tree -a -I .git/'

# Delete all local topic branches (in current repo) that aren't mine
alias rmtopics='git branch | grep topic | grep -vE "^\*|\/$USER\/" | xargs -n1 git branch -d'

# Delete all local branches that don't have a corresponding remote branch
alias gprune="git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
alias gpruneD="git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -D"

# quickly switch between repos; assumes a common repo directory
repo() {
    workdir=${GIT_REPO_DIR:-~/working}
    if [[ $# -lt 1 ]] ; then
        cd "$workdir"
    else
        tgt="$workdir/$1"
        [[ -d "$tgt" ]] \
        && cd "$tgt" \
        || echo "Invalid target '$tgt'"
    fi
}
