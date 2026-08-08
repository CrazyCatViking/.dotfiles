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

if [ -d ~/.config/hypr ]; then
  rm -rf ~/.config/hypr
fi

if [ -L ~/.config/zls.json]; then
  rm ~/.config/zls.json
fi

if [ -d ~/.config/noctalia ]; then
  rm -rf ~/.config/noctalia
fi

ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/tmux ~/.config/tmux
ln -s ~/.dotfiles/ghostty ~/.config/ghostty
ln -s ~/.dotfiles/hypr ~/.config/hypr
ln -s ~/.dotfiles/noctalia ~/.config/noctalia
ln -s ~/.dotfiles/zls.json ~/.config/zls.json
