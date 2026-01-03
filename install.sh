#!/usr/bin/env bash

set -e

CONFIG_DIR="$HOME/.config"
DOTFILES_DIR="$(pwd)"

echo "Installing i3 dotfiles..."

mkdir -p "$CONFIG_DIR"

for dir in i3 polybar kitty rofi picom btop htop cava fastfetch lvim; do
    echo "Linking $dir"
    rm -rf "$CONFIG_DIR/$dir"
    ln -s "$DOTFILES_DIR/$dir" "$CONFIG_DIR/$dir"
done

echo "Done."
echo "Restart i3 to apply changes."
