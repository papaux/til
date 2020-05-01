#!/bin/bash

##
# Build into html file format for github pages.
# This assumes you have a folder ../til-gh-pages which tracks the gh-pages branch
##

GH_PAGES=./build

if [ ! -d "$GH_PAGES" ]; then
    echo "ERROR: Cannot proceed becaus the target directory $GH_PAGES does not exist."
    exit 1
fi

# Set the TIL counter
TILCOUNT=$(./til-count.sh)
sed -i "s/XXX/$TILCOUNT/" source/index.rst


make html -e BUILDDIR=$GH_PAGES

cp index.html $GH_PAGES/index.html
