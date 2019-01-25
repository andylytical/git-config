# Alias for git diff lsst branches
alias gdiff='git diff --color-words master...$(git rev-parse --abbrev-ref HEAD)'
# switch branches quickly
alias go='git checkout '
