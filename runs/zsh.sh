#!/usr/bin/env bash

set -e  # Exit on error

echo "⬇️ Installing zsh"
sudo pacman -S --noconfirm zsh

echo "🔧 Setting zsh as default shell for $USER"
chsh -s "$(which zsh)"

echo "📂 Preparing ~/.zsh directory for plugins and prompt"
mkdir -p ~/.zsh

echo "⬇️ Cloning zsh-autosuggestions"
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

echo "⬇️ Cloning zsh-syntax-highlighting"
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

echo "⬇️ Cloning powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k

echo "🧹 Removing existing .zshrc (if any)"
rm -f ~/.zshrc

echo "📦 Stowing .zshrc from dotfiles"
stow --dir=~/dotfiles --target=$HOME zsh

echo "💥 Sourcing .zshrc"
source ~/.zshrc

echo "✅ Zsh setup complete."
