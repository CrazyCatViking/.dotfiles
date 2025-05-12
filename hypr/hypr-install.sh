#!/bin/bash

set -e

cat <<"EOF"
   ____         __       ____
  /  _/__  ___ / /____ _/ / /__ ____
 _/ // _ \(_-</ __/ _ `/ / / -_) __/
/___/_//_/___/\__/\_,_/_/_/\__/_/

EOF

echo -e "Installing hyprland and dependencies for fedora"

dnf install hyprland hyprpaper hyprlock hyprpolkitagent waybar swaync rofi-wayland ghostty
dnf install grimblast
