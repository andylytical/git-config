# Alias for git diff lsst branches
alias gdiff='git diff --color-words master...$(git rev-parse --abbrev-ref HEAD)'

# Exclude .git from recursive grep
alias ggrep='grep -RI --exclude-dir=.git --exclude-dir=spec --exclude=Gemfile* --exclude=Rakefile'

# Delete all topic branches (in current repo) that aren't mine
alias rmtopics='git branch | grep topic | grep -vE "^\*|\/$USER\/" | xargs -n1 git branch -d'

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
