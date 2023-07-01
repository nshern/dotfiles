#!/usr/bin/env fish

# navigate to the nvim config directory
cd ~/.config/nvim

# add the lazy-lock.json file
git add lazy-lock.json

# commit with the provided message
git commit -m "build: updated plugins"

# push the commit to the default branch of the remote repository
git push

# Go to last active directory
cd -
