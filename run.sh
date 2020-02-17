#!/bin/bash

test -f $HOME/.Brewfile || ln -s $PWD/Brewfile $HOME/.Brewfile
git submodule update --init --recursive
bash strap/bin/strap.sh

if ! test -f $HOME/.ssh/id_rsa
  then
  ssh-keygen -t rsa
fi

if ! test -f $HOME/.bash_profile
then
  cat bash_profile >> $HOME/.bash_profile
fi

if ! test -f $HOME/.zshrc
then
  cat zshrc >> $HOME/.zshrc
fi
