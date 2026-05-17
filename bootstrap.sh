#!/bin/bash

# SwayFX Bootstrap Script
# This script installs all the utilities used in the SwayFX enhancement project.

echo "Starting SwayFX bootstrap..."

# Update system
sudo apt update

# Install UI and System Utilities
echo "Installing UI and System Utilities..."
sudo apt install -y \
    foot \
    wofi \
    waybar \
    mako-notifier \
    fonts-font-awesome \
    fonts-roboto \
    swayidle \
    swaylock \
    brightnessctl \
    pulseaudio-utils \
    grim \
    slurp \
    wl-clipboard \
    pavucontrol \
    lxappearance \
    qt5ct

# Setup GTK Theme (Nordic)
echo "Setting up Nordic GTK Theme..."
mkdir -p ~/.themes ~/.icons
if [ ! -d "$HOME/.themes/Nordic" ]; then
    git clone https://github.com/EliverLara/Nordic.git ~/.themes/Nordic
fi
wget -qO- https://git.io/papirus-icon-theme-install | DESTDIR="$HOME/.icons" sh

# Configure GTK Settings
mkdir -p ~/.config/gtk-3.0 ~/.config/gtk-4.0
cat <<EOF > ~/.config/gtk-3.0/settings.ini
[Settings]
gtk-theme-name=Nordic
gtk-icon-theme-name=Papirus-Dark
gtk-font-name=Roboto 11
gtk-cursor-theme-name=DMZ-White
gtk-application-prefer-dark-theme=1
EOF
cp ~/.config/gtk-3.0/settings.ini ~/.config/gtk-4.0/settings.ini

# Install Build Dependencies (for SwayFX)
echo "Installing Build Dependencies for SwayFX..."
sudo apt install -y \
  meson pkg-config cmake git scdoc \
  wayland-protocols libwayland-dev libpcre2-dev libjson-c-dev \
  libpango1.0-dev libcairo2-dev libgdk-pixbuf-2.0-dev \
  libdrm-dev libgbm-dev libinput-dev libseat-dev libxkbcommon-dev \
  libxcb-dri3-dev libxcb-present-dev libxcb-res0-dev \
  libxcb-render-util0-dev libxcb-ewmh-dev libxcb-icccm4-dev \
  libliftoff-dev libdisplay-info-dev liblcms2-dev libpixman-1-dev \
  libgles2-mesa-dev

echo "Bootstrap complete!"
echo "Note: SwayFX itself must be built from source as described in GEMINI.md."
