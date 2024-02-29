#!/bin/bash

# Get the list of newly added or modified .py files in the latest commit
git diff --name-only HEAD^ HEAD | grep '\.py$' > modified_py_files.txt
