#!/bin/bash

set -x

BASE=$( dirname $0 )
TS=$(date +%s)

# Install regular dir contents
for d in bin ; do
    tgt="$HOME/$d"
    src="$BASE/$d"
    mkdir -p "$tgt"
    find "$src" -type f -print \
    | xargs install -vbC --suffix="$TS" -t "$tgt"
done

# Install DOT dir contents
for d in bashrc.d ; do
    tgt="$HOME/.$d"
    src="$BASE/$d"
    mkdir -p "$tgt"
    find "$src" -type f -print \
    | xargs install -vbC --suffix="$TS" -t "$tgt"
done

# Run mk_* files
find "$BASE/bin" -type f -executable -name 'mk_*' -printf '%f\n' \
| while read; do
    runme="$HOME/bin/$REPLY"
    [[ -x "$runme" ]] && "$runme"
done

# Copy external scripts to HOME/bin
src="https://raw.githubusercontent.com/fboender/multi-git-status/master/mgitstatus"
tgt="$HOME/bin/mgits"
curl -o "$tgt" "$src"
chmod +x "$tgt"

echo
echo "Suggest adding '$HOME/bin' to PATH, if not there already"
echo
