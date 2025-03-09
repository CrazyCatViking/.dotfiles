#!/bin/bash

set -ex

# Setup bash
if [ -f ~/.bashrc ]; then
  rm ~/.bashrc
fi

if [ -f ~/.bash_profile ]; then
  rm ~/.bash_profile
fi

if [ -f ~/.profile ]; then
  rm ~/.profile
fi

ln -s .dotfiles/.bashrc ~/.bashrc
ln -s .dotfiles/.profile ~/.profile

# Copy config files
if [ -d ~/.config/nvim ]; then
  rm -rf ~/.config/nvim
fi

if [ -d ~/.config/tmux ]; then
  rm -rf ~/.config/tmux
fi

if [ -d ~/.config/ghostty ]; then
  rm -rf ~/.config/ghostty
fi

ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/tmux ~/.config/tmux
ln -s ~/.dotfiles/ghostty ~/.config/ghostty
