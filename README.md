# git-config

# Setup
## Git aliases
```
# branches
git config --global alias.br branch
git config --global alias.brs 'branch -a'
git config --global alias.branches 'branch -a'
git config --global alias.rmb '!git push origin :"${1}"; git branch -d "${1}" #'
# workflow
git config --global alias.new '!git checkout production; git pull; git reset --hard origin/production; git checkout -b "${1}" #'
git config --global alias.co checkout
git config --global alias.go '!git checkout "${1}"; git pull #'
git config --global alias.test '!git checkout test; git pull #'
git config --global alias.prod '!git checkout "production"; git pull #'
git config --global alias.amend 'commit -a --amend'
# info
git config --global alias.st status
git config --global alias.df 'diff --color-words'
git config --global alias.bdiff '!git checkout "${1}" && git pull && git checkout production && git pull && git diff --color-words production..."${1}" #'
git config --global alias.hist 'log --oneline --graph --decorate --all'
# Config meta
git config --global alias.aliases 'config --get-regexp alias'
# Debugging aliases
git config --global alias.debug '!GIT_TRACE=1 git'

```

## Bash aliases
`>~/.bashrc.d/git.sh curl https://raw.githubusercontent.com/andylytical/git-config/master/bashrc.d/git.sh`

# See also:
* https://haacked.com/archive/2014/07/28/github-flow-aliases/
