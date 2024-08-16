#!/bin/bash

# Install or update git
sudo apt-get install -y git

# Global settings
git config --global user.name "Tautvydas Rasimavicius"
git config --global user.email "tautvydas.rasimavicius@gmail.com"

git config --global core.editor $EDITOR
git config --global core.excludesfile ~/.dotfiles/git/.gitignore
git config --global push.default tracking
git config --global pull.rebase true
git config --global color.ui true
git config --global gpg.program gpg
git config --global commit.gpgsign true
git config --global pager.branch false
git config --global pager.config false
git config --global init.defaultBranch main

# Add the following to .gitconfig file to enable partial-push
# [alias]
#     # Push large repositories in smaller chunks. Usage: git partial-push <remote> <branch>
#     partial-push = "!sh -c 'REMOTE=$0;BRANCH=$1;BATCH_SIZE=100; if git show-ref --quiet --verify refs/remotes/$REMOTE/$BRANCH; then range=$REMOTE/$BRANCH..HEAD; else range=HEAD; fi; n=$(git log --first-parent --format=format:x $range | wc -l); echo "Have to push $n packages in range of $range"; for i in $(seq $n -$BATCH_SIZE 1); do h=$(git log --first-parent --reverse --format=format:%H --skip $i -n1);  echo "Pushing $h..."; git push $REMOTE ${h}:refs/heads/$BRANCH; done; git push $REMOTE HEAD:refs/heads/$BRANCH'"
