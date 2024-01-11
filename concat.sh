#!/bin/bash

# This script removes the finalfile.txt if it exists, 
# then iterates over Markdown files in the src directory, 
# prepends a "#" and the filename (without extension) to each file's contents,
# and appends them to finalfile.txt.

rm -f README.md && for f in src/*.md; do (cat "${f}"; echo ;) >> README.md; done
