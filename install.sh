#!/bin/bash
rm -f ~/.vimrc
ln -sf `pwd`/.vimrc ~/.vimrc
rm -f ~/.ideavimrc
ln -sf `pwd`/.ideavimrc ~/.ideavimrc
