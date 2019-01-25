# Alias for git diff lsst branches
alias gdiff='git diff --color-words master...$(git rev-parse --abbrev-ref HEAD)'
# switch branches quickly (GitGo)
alias gg='git checkout'
alias go='git checkout'
