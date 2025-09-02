# ========================================================================
# .zshrc - fichier de configuration principal pour Zsh
# ========================================================================

# ----- Options générales -----
# Active les corrections mineures de frappe dans les commandes
setopt CORRECT
# Autorise la complétion avec tabulation même si la commande est partielle
setopt AUTO_CD
# Colore automatiquement les résultats de ls/eza
autoload -U colors && colors


# ----- Prompt (géré par starship) -----
# On active starship comme prompt
# NOTE: nécessite starship déjà installé, sinon commenter cette ligne
#eval "$(starship init zsh)"


# ----- Fzf integration -----
# Active fzf si installé (fuzzy finder pour recherche de fichiers, historique…)
# Les fichiers key-bindings.zsh et completion.zsh seront ajoutés par fzf
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh


# ----- Alias utiles -----
# ls coloré → remplacé par eza si dispo
#alias ls='eza --icons --group-directories-first'
# cat amélioré avec bat (affichage coloré + numéros de ligne)
#alias cat='bat --style=plain'
# raccourci pour mise à jour Arch
alias update='sudo pacman -Syu'
# raccourci pour redémarrer la session shell
alias reload='exec zsh'


# ----- Historique -----
# Localisation du fichier d’historique
HISTFILE=~/.zsh_history
# Nombre de lignes mémorisées en mémoire
HISTSIZE=10000
# Nombre de lignes conservées dans le fichier
SAVEHIST=10000
# Partage l’historique entre plusieurs sessions zsh
setopt SHARE_HISTORY


# ----- Complétion avancée -----
autoload -Uz compinit
compinit

# ----- Utiliser le socket SSH du gnome-keyring -----
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/gcr/ssh"

# ----- Variables PATH (exemple pour bin perso / scripts) -----
# Ajoute ~/bin au PATH si ce dossier existe
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi
