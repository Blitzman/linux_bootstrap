#!/bin/bash

# Simple script to sync dotfiles from this repo to ~/.config/

DOTFILES_DIR="$(pwd)/dotfiles"
CONFIG_DIR="$HOME/.config"

echo "Syncing dotfiles to $CONFIG_DIR..."

# Create config dir if it doesn't exist
mkdir -p "$CONFIG_DIR"

# Sync each directory
for dir in "$DOTFILES_DIR"/*; do
    if [ -d "$dir" ]; then
        target_name=$(basename "$dir")
        echo "Syncing $target_name..."
        
        # We'll use symbolic links to make development easier
        # If it's already a directory but not a link, we might want to back it up
        if [ -d "$CONFIG_DIR/$target_name" ] && [ ! -L "$CONFIG_DIR/$target_name" ]; then
            echo "Backing up existing $target_name to $target_name.bak"
            mv "$CONFIG_DIR/$target_name" "$CONFIG_DIR/$target_name.bak"
        fi
        
        ln -snf "$dir" "$CONFIG_DIR/"
    fi
done

# Also ensure sway-run.sh is in ~/bin/
mkdir -p "$HOME/bin"
ln -sf "$(pwd)/sway-run.sh" "$HOME/bin/sway-run.sh"

echo "Done! Changes will take effect on next Sway reload (Super+Shift+C)."
