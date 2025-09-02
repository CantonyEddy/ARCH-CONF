-- Active l’auto-reconnexion pour les périphériques Bluetooth
bluez_monitor.properties = {
  -- Permet à WirePlumber de se souvenir des périphériques audio
  ["bluez5.enable-sbc-xq"] = true,       -- Active un codec Bluetooth de meilleure qualité
  ["bluez5.enable-msbc"] = true,         -- Améliore la voix (casques/micro)
  ["bluez5.enable-hw-volume"] = true,    -- Gère le volume matériel du casque
  ["bluez5.autoswitch"] = true,          -- Bascule automatiquement vers ton casque à la connexion
}
