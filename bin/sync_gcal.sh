#!/bin/zsh

wget -q $GCAL_URL -O - | ./.local/bin/ical2orgpy - - > ~/org/gcal_new.org
mv ~/org/gcal_new.org ~/org/gcal.org
