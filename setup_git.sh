#!/bin/bash
#set -e

echo
tput setaf 3
echo "################################################################"
echo "################### Start"
echo "################################################################"
tput sgr0
echo


project=$(basename `pwd`)
githubdir="Raindeer-OS"
echo "-----------------------------------------------------------------------------"
echo "this is project https://github.com/$githubdir/$project"
echo "-----------------------------------------------------------------------------"

git config --global pull.rebase false
git config --global push.default simple
git config --global user.name "Raindeer-OS"
git config --global user.email "officialraindeeros@gmail.com"
sudo git config --system core.editor nano
git remote set-url origin git@github.com:$githubdir/$project
echo
tput setaf 3
echo "################################################################"
echo "################### End"
echo "################################################################"
tput sgr0
echo
