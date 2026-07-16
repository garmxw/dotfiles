#!/usr/bin/env bash

set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

echo "Creating directories..."

mkdir -p ~/.config
mkdir -p ~/.local/share/ascii

echo "Copying configs..."

cp -r "$DOTFILES/hypr" ~/.config/
cp -r "$DOTFILES/waybar" ~/.config/
cp -r "$DOTFILES/kitty" ~/.config/
cp -r "$DOTFILES/nvim" ~/.config/
cp -r "$DOTFILES/zathura" ~/.config/
cp -r "$DOTFILES/fastfetch" ~/.config/
cp -r "$DOTFILES/ohmyposh" ~/.config/

echo "Copying assets..."

cp -r "$DOTFILES/assets/"* ~/.local/share/ascii/

echo "Installing shell configs..."

cp "$DOTFILES/.bashrc" ~/
cp "$DOTFILES/.zshrc" ~/

if command -v pacman >/dev/null; then
  if [ -f "$DOTFILES/packages/pacman.txt" ]; then
    echo "Installing official packages..."
    sudo pacman -S --needed - <"$DOTFILES/packages/pacman.txt"
  fi
fi

if command -v yay >/dev/null; then
  if [ -f "$DOTFILES/packages/yay.txt" ]; then
    echo "Installing AUR packages..."
    yay -S --needed - <"$DOTFILES/packages/yay.txt"
  fi
fi

echo
echo "Installation completed."
echo
echo "Restart Hyprland or log out and log back in."
