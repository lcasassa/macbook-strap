#!/bin/bash

test -f $HOME/.Brewfile || ln -s $PWD/Brewfile $HOME/.Brewfile
git submodule update --init --recursive
bash strap/bin/strap.sh

test -f $HOME/.sh/id_rsa || ssh-keygen -t rsa
