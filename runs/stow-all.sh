#!/usr/bin/env bash
set -e

echo "☠️  Removing existing configs."

# Define all target paths to nuke
declare -a paths=(
  "~/.zshrc"
  "~/.zsh"
  "~/.config/nvim"
  "~/.tmux.conf"
  "~/.config/hypr"
  "~/.config/waybar"
  "~/.config/lazygit"
  "~/.xkb"
  "~/.config/ghostty"
)

for path in "${paths[@]}"; do
  expanded_path=$(eval echo "$path")
  if [ -e "$expanded_path" ] || [ -L "$expanded_path" ]; then
    echo "🔥 Removing $expanded_path"
    rm -rf "$expanded_path"
  fi
done

echo "📦 Stowing dotfiles..."

cd ~/dotfiles

stow zsh
stow nvim
stow hypr
stow waybar
stow keyboard
stow lazygit
stow ghostty
stow .local
stow --adopt .czrc
stow --adopt .tmux.conf

echo "✅ All dotfiles stowed."
