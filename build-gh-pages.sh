#!/bin/bash

##
# Build into html file format for github pages.
##

GH_PAGES=./build

if [ ! -d "$GH_PAGES" ]; then
    echo "ERROR: Cannot proceed becaus the target directory $GH_PAGES does not exist."
    exit 1
fi

# Set the TIL counter
TILCOUNT=$(./til-count.sh)
sed -i "s/XXX/$TILCOUNT/" source/index.rst

# Build HTML pages
make html -e BUILDDIR=$GH_PAGES

# Copy custom index.html
cp index.html $GH_PAGES/index.html
