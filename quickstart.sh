#!/bin/bash

tmpdir=$(mktemp -d)
GIT=$(which git)
[[ -z "$GIT" ]] && {
    echo "ERROR: Cmd 'git' not found. Is 'git' installed?" >&2
    echo "Exiting." >&2
    exit 1
}
git clone https://github.com/andylytical/git-config.git $tmpdir/repo
$tmpdir/repo/setup.sh
rm -rf $tmpdir
