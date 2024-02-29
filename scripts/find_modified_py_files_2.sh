#!/bin/bash

# Check if there is a parent commit
if git rev-parse --verify HEAD^ >/dev/null 2>&1; then
  # Get the list of modified .py files between the latest commit and its parent
  git diff --name-only HEAD^ HEAD | grep '\.py$' > modified_py_files.txt
else
  # List all .py files in the current commit (initial commit)
  git ls-tree --name-only -r HEAD | grep '\.py$' > modified_py_files.txt
fi
