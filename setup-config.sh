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

if [ -d ~/.config/rofi ]; then
  rm -rf ~/.config/rofi
fi

if [ -d ~/.config/swaync ]; then
  rm -rf ~/.config/swaync
fi

if [ -d ~/.config/waybar ]; then
  rm -rf ~/.config/waybar
fi

if [ -d ~/.config/zls.json]; then
  rm -rf ~/.config/zls.json
fi

ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/tmux ~/.config/tmux
ln -s ~/.dotfiles/ghostty ~/.config/ghostty
ln -s ~/.dotfiles/hypr ~/.config/hypr
ln -s ~/.dotfiles/rofi ~/.config/rofi
ln -s ~/.dotfiles/swaync ~/.config/swaync
ln -s ~/.dotfiles/waybar ~/.config/waybar
ln -s ~/.dotfiles/zls.json ~/.config/zls.json
