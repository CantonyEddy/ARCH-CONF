" ===================================
" ~/.config/nvim/init.vim
" Config minimaliste pour installation Arch
" ===================================

" --- Général ---
set nocompatible          " Ne pas utiliser le mode Vi ancien
set encoding=utf-8        " Encodage par défaut
set fileencoding=utf-8    " Encodage des fichiers

" --- Apparence ---
set number                " Numéros de lignes
set relativenumber        " Numéros relatifs (utile pour se déplacer vite)
set cursorline            " Surligne la ligne courante
syntax on                 " Active la coloration syntaxique
set termguicolors         " Support des couleurs 24 bits

" --- Indentation ---
set tabstop=4             " Taille d'une tabulation = 4 espaces
set shiftwidth=4          " Indentation automatique = 4 espaces
set expandtab             " Convertit les tabs en espaces
set smartindent           " Indentation intelligente

" --- Recherche ---
set hlsearch              " Met en évidence les résultats
set incsearch             " Recherche incrémentale
set ignorecase            " Ignore la casse
set smartcase             " sauf si majuscules dans la recherche

" --- Confort ---
set clipboard=unnamedplus " Utiliser le presse-papier système
set mouse=a               " Active la souris dans toutes les modes
set scrolloff=5           " Toujours laisser 5 lignes autour du curseur
set wrap                  " Retour à la ligne automatique
set showcmd               " Affiche la commande en bas
set ruler                 " Affiche la position du curseur

" --- Sauvegarde ---
set undofile              " Active l’historique d’undo persistant
set backup                " Garde une copie de sauvegarde
set writebackup           " Crée une copie avant d’écraser
