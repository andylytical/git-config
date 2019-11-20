# Alias for git diff lsst branches
alias gdiff='git diff --color-words master...$(git rev-parse --abbrev-ref HEAD)'

# Delete all topic branches (in current repo) that aren't mine
alias rmtopics='git branch | grep topic | grep -vE "^\*|\/$USER\/" | xargs -n1 git branch -d'

# Alias to quickly switch between puppet devops repos
# Example: "repo git-config" ... yields ...  "cd ~/working; cd git-config"
alias repo='cd ~/working; cd'
