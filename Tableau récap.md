📑 Tableau récapitulatif (ordre d’installation conseillé)
| Ordre | Nom                                         | Description                                                                  | Fichier(s) de config standard                                   |
| ----- | ------------------------------------------- | ---------------------------------------------------------------------------- | --------------------------------------------------------------- |
| 1     | **NetworkManager + iwd**                    | Gestion réseau (Ethernet, Wi-Fi, VPN). `iwd` = backend moderne pour le Wi-Fi | `/etc/NetworkManager/NetworkManager.conf`, `/etc/iwd/main.conf` |
| 2     | **zsh**                                     | Shell moderne                                                                | `~/.zshrc`                                                      |
| 3     | **fzf**                                     | Fuzzy finder (recherche rapide dans historique, fichiers, git)               | `~/.zshrc`, `/usr/share/fzf/key-bindings.zsh`                   |
| 4     | **starship**                                | Prompt moderne et personnalisable                                            | `~/.config/starship.toml`                                       |
| 5     | **Hack Nerd Font**                          | Police compatible icônes (starship, waybar, wezterm)                         | installation police → pas de conf                               |
| 6     | **tmux**                                    | Multiplexeur de terminaux                                                    | `~/.tmux.conf`                                                  |
| 7     | **eza**                                     | Remplacement moderne de `ls`                                                 | `~/.zshrc` (alias)                                              |
| 8     | **bat**                                     | Remplacement coloré de `cat`                                                 | `~/.zshrc` (alias)                                              |
| 9     | **git**                                     | Gestion de versions                                                          | `~/.gitconfig`                                                  |
| 10    | **curl**                                    | Téléchargement HTTP(S)                                                       | pas de conf                                                     |
| 11    | **wget**                                    | Téléchargement HTTP(S)                                                       | `~/.wgetrc` (optionnel)                                         |
| 12    | **unzip / zip / tar**                       | Gestion des archives                                                         | pas de conf                                                     |
| 13    | **pacman**                                  | Gestionnaire de paquets Arch officiel                                        | `/etc/pacman.conf`                                              |
| 14    | **paru**                                    | AUR helper moderne (installation depuis AUR)                                 | `~/.config/paru/paru.conf`                                      |
| 15    | **Hyprland**                                | Window manager Wayland moderne                                               | `~/.config/hypr/hyprland.conf`                                  |
| 16    | **waybar**                                  | Barre de statut sous Wayland                                                 | `~/.config/waybar/config`, `~/.config/waybar/style.css`         |
| 17    | **wofi**                                    | Application launcher (style rofi)                                            | `~/.config/wofi/config`                                         |
| 18    | **hyprpaper**                               | Gestionnaire de fonds d’écran                                                | `~/.config/hypr/hyprpaper.conf`                                 |
| 19    | **dunst**                                   | Gestionnaire de notifications                                                | `~/.config/dunst/dunstrc`                                       |
| 20    | **wezterm**                                 | Terminal moderne (support Wayland natif)                                     | `~/.config/wezterm/wezterm.lua`                                 |
| 21    | **pipewire + wireplumber**                  | Système audio moderne (remplace PulseAudio)                                  | `~/.config/pipewire/pipewire.conf.d/`                           |
| 22    | **blueman**                                 | Gestion Bluetooth via GUI                                                    | `~/.config/blueman/` (optionnel)                                |
| 23    | **gnome-keyring**                           | Stockage sécurisé des mots de passe (Wi-Fi, apps)                            | démarrage automatique (daemon)                                  |
| 24    | **xdg-utils + xdg-desktop-portal-hyprland** | Intégration Wayland (screenshare, ouverture fichiers)                        | `/usr/share/xdg-desktop-portal/`                                |
| 25    | **polkit-gnome**                            | Gestion graphique des droits root                                            | pas de conf (daemon)                                            |
| 26    | **neovim**                                  | Éditeur de texte moderne                                                     | `~/.config/nvim/init.vim` ou `lua/`                             |
| 27    | **htop / btop**                             | Monitoring CPU/RAM interactif                                                | `~/.config/btop/` (si btop)                                     |
| 28    | **fastfetch**                               | Affiche infos système en ASCII (successeur de neofetch)                      | `~/.config/fastfetch/config.jsonc`                              |
| 29    | **yazi**                                    | File manager en terminal (rapide, TUI)                                       | `~/.config/yazi/config.toml`                                    |
| 30    | **ufw**                                     | Firewall simple (optionnel sur poste client)                                 | `/etc/ufw/ufw.conf`                                             |
| 31    | **fail2ban**                                | Bloque brute-force SSH (utile si SSH public)                                 | `/etc/fail2ban/jail.conf`                                       |
| 32    | **openssh**                                 | Serveur SSH                                                                  | `/etc/ssh/sshd_config`                                          |
