# ========================================================================
# .zshrc - fichier de configuration principal pour Zsh
# ========================================================================

# ----- Options générales -----
setopt CORRECT               # petites corrections de frappe
setopt AUTO_CD               # cd implicite
autoload -U colors && colors # couleurs

# ----- Prompt (Starship) -----
# Commente cette ligne si starship pas encore installé
#eval "$(starship init zsh)"

# ----- FZF (binds + complétions) -----
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ]   && source /usr/share/fzf/completion.zsh

# ----- Alias utiles -----
alias ls="eza --icons --group-directories-first"
alias cat="bat --paging=never"
alias update="sudo pacman -Syu"
alias reload="exec zsh"

# ----- Historique -----
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# ----- Complétion -----
autoload -Uz compinit
compinit

# ----- Gnome-keyring (SSH) -----
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gcr/ssh"

# ----- PATH perso -----
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi
