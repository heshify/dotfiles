# Dotfiles

A modular, pacman-powered dotfiles collection designed for rapid workstation setup on Arch Linux. All configurations are managed with GNU Stow and a set of self-contained install scripts to automate package installation and symlink deployment.

---

## 🚀 Quick Start

1. **Clone the repository**

   ```bash
   git clone https://github.com/heshify/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Make all scripts executable**

   ```bash
   chmod +x runs/*.sh
   ```

3. **Run the master installer**
   Installs packages, removes old configs, stows all dotfiles, and boots you into a fully configured shell environment.

   ```bash
   ./runs/install.sh
   ```

4. **Re-link only configs**
   If packages are already installed, or after tweaking dotfiles, re-run the stow script:

   ```bash
   ./runs/stow-all.sh
   ```

---

## 🛠️ Prerequisites

- **Arch Linux** (or derivative)
- **pacman** and an AUR helper (e.g. `yay`) if you plan to install AUR packages
- **GNU Stow**
- Basic command-line tools: `git`, `zsh`, `sudo`, `fzf`
- Ripgrep

---

## 📁 Directory Structure

```
dotfiles/
├── .czrc
├── ghostty/           – Ghostty config
├── hypr/               – Hyprland & Hyprpaper configs
├── keyboard/           – Custom XKB keymaps
├── lazygit/            – LazyGit config
├── nvim/               – Neovim (LazyVim + Lua) config
├── README.md           – This document
├── runs/
│   ├── install.sh      – Master installer script
│   ├── stow-all.sh     – Wipes old configs + stows everything
│   ├── install-neovim.sh
│   ├── install-tmux.sh
│   ├── install-hyprland.sh
│   ├── install-waybar.sh
│   ├── install-lazygit.sh
│   ├── install-keymap.sh
│   ├── install-ghostty.sh
│   └── install-local-bin.sh
├── .tmux.conf
├── waybar/             – Waybar config
└── zsh/                – Zsh rc
```

---

## ⚙️ Installation Scripts

Each `runs/install-*.sh` script performs:

1. **Package installation** via `pacman`.
2. **Cleanup** (where applicable).
3. **Stow** of the corresponding subdirectory into the home directory.

The **master script** (`runs/install.sh`) chains them all in the recommended order.

---

## 💣 Stow-All Script

`runs/stow-all.sh` performs a **destructive cleanup** of any existing config files or symlinks, then re-stows **all** dotfiles:

```bash
# Example snippet from stow-all.sh
rm -rf ~/.zshrc \
       ~/.config/nvim \
       ~/.tmux.conf \
       ~/.config/hypr \
       ~/.config/waybar \
       ~/.config/lazygit \
       ~/.xkb \
       ~/.config/ghostty \
       ~/.local/bin

cd ~/dotfiles
stow zsh nvim --adopt .tmux.conf hypr waybar lazygit keyboard ghostty .local
```

---

## ✨ Customization

- Add or remove entries in `runs/stow-all.sh` as your toolset evolves.
- Drop new configs into the root of the repo, then reference them in the stow or install scripts.
- Feel free to extend the install scripts to include additional dependencies (fonts, themes, CLI tools).

---

## ⚠️ License

**DO WHATEVER THE FUCK YOU WANT.**

This repository comes with **zero guarantees** — things might not work, might break your setup, or in rare catastrophic cases, **might make your machine go kaboom**.

You are solely responsible for anything you do with this code.
