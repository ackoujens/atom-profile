# Atom Profile Restore
# Author: Jens Ackou

cp profile/*.list profile/*.coffee profile/*.less profile/*.cson ~/.atom/
apm install --packages-file ~/.atom/package.list
