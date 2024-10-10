#!/bin/bash

# This init script is used for:
# - Installing nbstripout to automatically remove notebooks outputs before commit/push

# Expected parameters: None
# Only works if a git clone is made at the creation of the onyxia's service

# Install nbstripout
echo "Installing nbstripout..."
pip install nbstripout

# Run nbstripout installation if agit repo has already been cloned
repo_name=$(echo $GIT_REPOSITORY | sed 's#.*/\([^/]*\)\.git#\1#')
echo $repo_name

echo "Changes directory and runs nbstripout --install..."
cd $HOME/work/$repo_name && nbstripout --install

echo "Personal init done."
