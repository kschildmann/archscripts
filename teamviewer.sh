#!/usr/bin/bash
set -e

# Check if user is root and abort
if [ "$EUID" -eq 0 ]; then
    echo "Do not run as root"
    exit
fi

# Check if yay is installed
if ! command -v yay &> /dev/null; then
    echo "yay is not installed"
    echo "https://arch.schildmann.net/yay.sh"
    exit
fi

# Install teamviewer
yay -S teamviewer --noconfirm

# Enable teamviewerd service
sudo systemctl enable --now teamviewerd.service