# git-config

# Setup
## Git aliases
```
# branches
git config --global alias.br branch
git config --global alias.brs 'branch -a'
git config --global alias.branches 'branch -a'
# workflow
git config --global alias.newb 'checkout -b'
git config --global alias.co checkout
git config --global alias.go checkout
git config --global alias.amend 'commit -a --amend'
# info
git config --global alias.st status
git config --global alias.df 'diff --color-words'
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
# Merge squash
git config --global alias.mstest '!git checkout test && git pull && git merge --squash $1'
git config --global alias.msmaster '!git checkout master && git pull && git merge --squash $1'
# Config meta
git config --global alias.aliases 'config --get-regexp alias'

```

## Bash aliases
`>~/.bashrc.d/git.sh curl https://raw.githubusercontent.com/andylytical/git-config/master/bashrc.d/git.sh`

# See also:
* https://haacked.com/archive/2014/07/28/github-flow-aliases/
