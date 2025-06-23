# Vollständige Initialisierung des Eskorte-Spiels
tellraw @a {"text":"=== ESKORTE SETUP ===","color":"gold","bold":true}

# Alle bestehenden Entitäten entfernen
kill @e[tag=eskorte_cart]
kill @e[tag=eskorte_passenger]
kill @e[tag=eskorte_start]
kill @e[tag=eskorte_end]

# Scoreboards zurücksetzen
scoreboard players set #game_active eskorte_setup 0
scoreboard players set #timer eskorte_timer 0
scoreboard players set #defenders eskorte_distance 0

# Teams leeren
team empty attackers
team empty defenders

# Status-Nachricht
tellraw @a [{"text":"Setup abgeschlossen. Nächste Schritte:","color":"yellow"},{"text":"\n1. ","color":"white"},{"text":"Startpunkt setzen: ","color":"gray"},{"text":"/function eskorte:admin/set_start","color":"green","clickEvent":{"action":"suggest_command","value":"/function eskorte:admin/set_start"}},{"text":"\n2. ","color":"white"},{"text":"Zielpunkt setzen: ","color":"gray"},{"text":"/function eskorte:admin/set_end","color":"green","clickEvent":{"action":"suggest_command","value":"/function eskorte:admin/set_end"}},{"text":"\n3. ","color":"white"},{"text":"Checkpoints platzieren: ","color":"gray"},{"text":"/function eskorte:admin/place_checkpoint","color":"green","clickEvent":{"action":"suggest_command","value":"/function eskorte:admin/place_checkpoint"}},{"text":"\n4. ","color":"white"},{"text":"Spiel starten: ","color":"gray"},{"text":"/function eskorte:admin/start_game","color":"green","clickEvent":{"action":"suggest_command","value":"/function eskorte:admin/start_game"}}]