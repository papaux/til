#!/bin/bash

source venv/bin/activate
make -j4 html
LATEST=$(find source -type f -exec stat -c '%X %n' {} \; | sort -nr | awk 'NR==1,NR==1 {print $2}' | sed 's/source//g' | sed 's/.rst/.html/g')

echo Opening $LATEST

firefox $PWD/build/html$LATEST
