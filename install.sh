#!/bin/sh

git config --global user.name "MSWS"
git config --global user.email "imodmaker@gmail.com"

git config --global gpg.format ssh
git config --global commit.gpgsign true
git config --global user.signingKey ~/.ssh/yubikey

git config --global init.defaultBranch main
git config --global push.autosetupremote=true

git config --global alias.ca 'commit -am'

cp ./ssh_config ~/.ssh/config

echo "eval $(ssh-agent -s) &>/dev/null" >> ~/.bashrc
eval $(ssh-agent -s)
ssh-keygen -K
mv id_ed25519_sk_rk ~/.ssh/yubikey
mv id_ed25519_sk_rk.pub ~/.ssh/yubikey.pub
