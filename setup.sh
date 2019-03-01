#!/bin/bash

set -x

TS=$(date +%s)

# Install regular dir contents
for d in bin ; do
    tgt="$HOME/$d"
    src="./$d"
    mkdir -p "$tgt"
    find "$src" -type f -print \
    | xargs install -vbC --suffix="$TS" -t "$tgt"
done

# Install DOT dir contents
for d in bashrc.d ; do
    tgt="$HOME/.$d"
    src="./$d"
    mkdir -p "$tgt"
    find "$src" -type f -print \
    | xargs install -vbC --suffix="$TS" -t "$tgt"
done

# Run mk_* files
find "./bin" -type f -executable -name 'mk_*' -printf '%f\n' \
| while read; do
    "$HOME/bin/$REPLY"
done

echo
echo "Suggest adding '$BIN' to PATH, if not there already"
echo
