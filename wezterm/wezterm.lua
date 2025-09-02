-- ==============================
-- ~/.config/wezterm/wezterm.lua
-- Configuration minimale WezTerm
-- ==============================

local wezterm = require("wezterm") -- Charge l'API de wezterm

return {
    -- Police utilisée
    font = wezterm.font("Hack Nerd Font"),
    font_size = 12.0, -- Taille par défaut

    -- Thème (Tokyo Night intégré à wezterm)
    color_scheme = "Tokyo Night",

    -- Transparence et effets
    window_background_opacity = 0.90, -- 90% opaque
    text_background_opacity = 1.0,    -- Texte 100% opaque
    enable_tab_bar = false,           -- Pas de barre d’onglets (minimaliste)

    -- Raccourcis utiles
    keys = {
        -- CTRL+SHIFT+T = nouvelle fenêtre (utile si pas de tab bar)
        {key="T", mods="CTRL|SHIFT", action=wezterm.action.SpawnWindow},
    },
}
