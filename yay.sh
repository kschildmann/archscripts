#!/usr/bin/bash
set -e

# Install git if not installed
sudo pacman -S git

# Download yay repo from AUR
git clone https://aur.archlinux.org/yay.git

# Change directory to yay
cd yay

# Build and install yay
makepkg -si

# Remove yay directory
cd ..
rm -rf yay
