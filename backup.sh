#!/bin/bash

# Atom Profile Backup
# Author: Jens Ackou

apm list --installed --bare > ~/.atom/package.list
cp ~/.atom/*.list ~/.atom/*.coffee ~/.atom/*.less ~/.atom/*.cson profile/
