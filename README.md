# git-config

# Setup
## Git aliases
```
git config --global alias.br branch
git config --global alias.brs 'branch -a'
git config --global alias.branches 'branch -a'
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.df 'diff --color-words'
git config --global alias.dump 'cat-file -p'
git config --global alias.go checkout
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.newb 'checkout -b'
git config --global alias.st status
git config --global alias.type 'cat-file -t'

```

## Bash aliases
`curl -o ~/.bashrc.d/git.sh https://raw.githubusercontent.com/andylytical/git-config/master/bashrc.d/git.sh`

# See also:
* https://haacked.com/archive/2014/07/28/github-flow-aliases/
