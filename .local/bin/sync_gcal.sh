#!/bin/zsh

ics_url=$1
target=$2

mkdir -p $(dirname $target)

wget -q $1 -O - | $HOME/.local/bin/ical2orgpy - - > $target.tmp
mv $target.tmp $target
