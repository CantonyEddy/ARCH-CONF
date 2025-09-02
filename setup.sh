#!/bin/bash
# ====================================================
# Script d’installation des fichiers de configuration
# ARCH-CONF – Arch Linux + Hyprland
# ====================================================

set -e  # Stoppe en cas d’erreur
REPO_DIR="$(pwd)/ARCH-CONF"

echo "=== Installation des configurations depuis $REPO_DIR ==="

# Fonction pour copier un fichier avec backup
install_conf() {
    local src="$1"
    local dest="$2"

    mkdir -p "$(dirname "$dest")"

    if [ -f "$dest" ]; then
        echo "[BACKUP] $dest -> $dest.bak"
        mv "$dest" "$dest.bak"
    fi

    echo "[COPY] $src -> $dest"
    cp "$src" "$dest"
}

# --------------------------
# 1. Shell
# --------------------------
install_conf "$REPO_DIR/zsh/.zshrc" "$HOME/.zshrc"
install_conf "$REPO_DIR/starship/starship.toml" "$HOME/.config/starship.toml"

# --------------------------
# 2. Terminal / TUI
# --------------------------
install_conf "$REPO_DIR/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"
install_conf "$REPO_DIR/wezterm/wezterm.lua" "$HOME/.config/wezterm/wezterm.lua"

# --------------------------
# 3. Éditeurs
# --------------------------
install_conf "$REPO_DIR/nvim/init.vim" "$HOME/.config/nvim/init.vim"

# --------------------------
# 4. System tools
# --------------------------
install_conf "$REPO_DIR/git/.gitconfig" "$HOME/.gitconfig"
install_conf "$REPO_DIR/pacman/pacman.conf" "/etc/pacman.conf"

# --------------------------
# 5. Hyprland + apps
# --------------------------
install_conf "$REPO_DIR/hypr/hyprland.conf" "$HOME/.config/hypr/hyprland.conf"
install_conf "$REPO_DIR/hypr/hyprpaper.conf" "$HOME/.config/hypr/hyprpaper.conf"
install_conf "$REPO_DIR/waybar/config.jsonc" "$HOME/.config/waybar/config.jsonc"
install_conf "$REPO_DIR/waybar/style.css" "$HOME/.config/waybar/style.css"
install_conf "$REPO_DIR/wofi/config" "$HOME/.config/wofi/config"
install_conf "$REPO_DIR/dunst/dunstrc" "$HOME/.config/dunst/dunstrc"

# --------------------------
# 6. Multimedia
# --------------------------
install_conf "$REPO_DIR/pipewire/wireplumber.conf" "$HOME/.config/wireplumber/wireplumber.conf"

# --------------------------
# 7. Utilities
# --------------------------
install_conf "$REPO_DIR/fastfetch/config.jsonc" "$HOME/.config/fastfetch/config.jsonc"
install_conf "$REPO_DIR/yazi/config.toml" "$HOME/.config/yazi/config.toml"

# --------------------------
# 8. Services systemd user
# --------------------------
install_conf "$REPO_DIR/blueman/blueman-applet.service" "$HOME/.config/systemd/user/blueman-applet.service"

# --------------------------
# 9. XDG portals
# --------------------------
install_conf "$REPO_DIR/xdg/xdg-portal.conf" "$HOME/.config/environment.d/xdg-portal.conf"

# Activer blueman
systemctl --user enable --now blueman-applet.service

echo "=== Installation terminée avec succès ==="