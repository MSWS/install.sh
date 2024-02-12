#!/bin/sh

git config --global user.name "MSWS"
git config --global user.email "imodmaker@gmail.com"

git config --global gpg.format ssh
git config --global commit.gpgsign true
git config --global user.signingKey ~/.ssh/yubikey

git config --global init.defaultBranch main
git config --global push.autosetupremote true

git config --global alias.ca 'commit -am'
