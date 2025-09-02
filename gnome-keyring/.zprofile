# ================================
# Gnome Keyring - Initialisation
# ================================

# Démarrage du daemon gnome-keyring avec tous les composants utiles :
# - pkcs11 : gestion des certificats
# - secrets : stockage des mots de passe pour applications (NetworkManager, apps, etc.)
# - ssh : gestion des clés SSH
# - gpg : gestion des clés GPG
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)

# Variable nécessaire pour SSH afin d’utiliser le keyring comme agent
export SSH_AUTH_SOCK
