#!/bin/bash

test -f $HOME/.Brewfile || ln -s $PWD/Brewfile $HOME/.Brewfile
git submodule update --init --recursive
bash strap/bin/strap.sh

test -f $HOME/.sh/id_rsa || ssh-keygen -t rsa

if ! test -d homebrew-cask-drivers
  then
  git clone https://github.com/Homebrew/homebrew-cask-drivers.git
  cd homebrew-cask-drivers
  brew cask install Casks/displaylink.rb
fi

if ! test -f $HOME/.bash_profile
then
  cat bash_profile >> $HOME/.bash_profile
fi

if ! test -f $HOME/.zshrc
then
  cat zshrc >> $HOME/.zshrc
fi
