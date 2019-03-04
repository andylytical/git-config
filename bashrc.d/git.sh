# Alias for git diff lsst branches
alias gdiff='git diff --color-words master...$(git rev-parse --abbrev-ref HEAD)'

# Alias to quickly switch between puppet devops repos
alias repo='cd ~/puppet; cd'
