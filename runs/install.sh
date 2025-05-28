#!/usr/bin/env bash
set -e

echo "⚙️ Starting full system setup."

# Core tools
echo "⬇️ Installing core tools."
sudo pacman -S --noconfirm ---needed git stow lazygit
sudo pacman -S --noconfirm --needed neovim fzf
sudo pacman -S --noconfirm --needed ghostty
sudo pacman -S --noconfirm --needed wofi ttf-font-awesome waybar ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols hyprpaper
sudo pacman -S --noconfirm --needed tmux

# Per-tool scripts
echo "⬇️ Setting up Zsh."
bash runs/zsh
# bash runs/install-neovim.sh
# bash runs/install-tmux.sh
# bash runs/install-hyprland.sh
# bash runs/install-waybar.sh
# bash runs/install-lazygit.sh
# bash runs/install-keymap.sh

# Stow configs
bash runs/stow-all.sh

echo "🌟 Setup complete."
